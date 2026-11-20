/*
 * Artifacts table (DataTables) — behaviour for includes/fragment-artifacts-table.html.
 *
 * Reads its data from window.artifactsTableData (assets/js/artifacts-table-data.js, rendered by Jekyll
 * with one block per language) and picks the block matching the page's <html lang="..."> attribute.
 *
 * The view (column filters, grouping, headings, sort, page length and current page) is persisted in localStorage
 * per page path, so a visitor returning to the page sees the same filtered view and page they left.
 */
document.addEventListener('DOMContentLoaded', function(){
  var tableEl = document.getElementById('artifactsTable');
  if (!tableEl || !window.jQuery || !jQuery.fn || !jQuery.fn.dataTable) return;

  // ----- Pick the language block -----
  var blocks = window.artifactsTableData || {};
  var pageLang = document.documentElement.getAttribute('lang') || '';
  var block = blocks[pageLang] || blocks[pageLang.split('-')[0]] || blocks[Object.keys(blocks)[0]] || {};
  var data = block.rows || [];
  var groupDescriptions = block.groupDescriptions || {};
  var labels = block.labels || {};

  function escapeHtml(s){ return String(s == null ? '' : s).replace(/[&<>"']/g, function(c){
    return {'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c];
  }); }
  function htmlToText(s){ return jQuery('<div/>').html(s || '').text(); }
  function regexEscape(s){ return String(s).replace(/[.*+?^${}()|[\]\\]/g, '\\$&'); }
  function buildSearchPattern(values){ return values.length ? '^(' + values.map(regexEscape).join('|') + ')$' : ''; }

  var useGroupingLabel = labels.useGrouping || 'Use grouping';
  var typeLabel        = labels.type        || 'Type';
  var categoryLabel    = labels.category    || 'Category';
  var clearAllLabel    = labels.clearAll    || 'Clear all';
  var headingsLabel    = labels.headings    || 'Headings';
  var HEADINGS_MODES = ['full', 'title', 'none'];
  var headingsModeLabels = {
    full:  labels.headingsFull  || 'Full',
    title: labels.headingsTitle || 'Title',
    none:  labels.headingsNone  || 'None'
  };

  // Column model. Data keys: p=grouping position, g=grouping label, n=title, i=id, t=type, d=description.
  var columnDefs = [
    { data: 'p', visible: false, searchable: false },
    { data: 'g', visible: false },
    { data: 'n', render: function(d, t, row){
        if (t === 'display') {
          return '<a href="' + encodeURI(row.u) + '" title="' + escapeHtml(row.r) + '">' + escapeHtml(d) + '</a>';
        }
        return d;
      }
    },
    { data: 'i', className: 'artifacts-id', render: function(d, t){
        return t === 'display' ? escapeHtml(d) : d;
      }
    },
    { data: 't' },
    { data: 'd', render: function(d, t){
        if (t === 'display') return d;
        return htmlToText(d);
      }
    }
  ];
  var TEXT_FILTER_KEYS = ['n', 'i', 'd'];
  var TYPE_COL = 4, CATEGORY_COL = 1, TITLE_COL = 2;
  var VISIBLE_COLS = columnDefs.filter(function(c){ return c.visible !== false; }).length;
  function colIndex(key){
    for (var i = 0; i < columnDefs.length; i++) if (columnDefs[i].data === key) return i;
    return -1;
  }

  var uniqueTypes = (function(){
    var s = new Set(), out = [];
    data.forEach(function(r){ if (r.t && !s.has(r.t)) { s.add(r.t); out.push(r.t); } });
    return out.sort();
  })();
  var uniqueCategories = (function(){
    var s = new Set(), out = [];
    data.slice().sort(function(a,b){ return a.p - b.p; }).forEach(function(r){
      if (r.g && !s.has(r.g)) { s.add(r.g); out.push(r.g); }
    });
    return out;
  })();

  // Category fragments: an exact group name or its 1-based position in the
  // complete category list (before filtering/pagination). Unknown anchors are ignored.
  function categoryFromFragment(hash = window.location.hash) {
    var value;
    try { value = decodeURIComponent(hash.replace(/^#/, '')); }
    catch(e) { return null; }
    if (!value) return null;
    if (uniqueCategories.indexOf(value) !== -1) return value;
    if (/^[1-9]\d*$/.test(value)) {
      return uniqueCategories[Number(value) - 1] || null;
    }
    return null;
  }

  // ----- View state -----
  var grouping = true;
  // Group header display: 'full' (name + description), 'title' (name only) or 'none'
  var headings = 'full';
  var selectedTypes = [];
  var selectedCategories = [];
  // Per-column text filters keyed by data key (plain substring, case-insensitive)
  var colTextFilters = {};
  // Free-text filter from ?text=, matched against any of TEXT_FILTER_KEYS
  var anyTextFilter = '';  
  var pageLength = 200;

  // ----- URL Parameters view request -----
  // Uses filters, grouping, sort order, page length and the current page so that a visitor
  // can be directed to this page with specific view parameters selected.
  function loadParameters(queryString = window.location.search) {
    try {
      const params = new URLSearchParams(queryString);

      if(params.size > 0)
      {
        const commaList = (name, fallback = []) =>
          params.has(name)
            ? params.get(name).split(",").map(value => value.trim()).filter(Boolean)
            : fallback;

        return {
          grouping: params.has("grouping")
            ? params.get("grouping") === "true"
            : true,
          types: commaList("types"),
          categories: commaList("categories", []),
          text: params.has("text") ? { value: params.get("text") } : {},
          start: params.has("start") ? Number(params.get("start")) : 0,
          length: params.has("length") ? Number(params.get("length")) : 200,
          order: params.has("order")
            ? [commaList("order").map((value, index) =>
                index === 0 ? Number(value) : value
              )]
            : [[0, "asc"]]
        };
      }
      else
      {
        // null lets the caller fall back to saved state when there is no URL view.
        return null;
      }
    } catch(e) { return null; }
  }

  // ----- Persisted view state (localStorage, per page) -----
  // Stores filters, grouping, sort order, page length and the current page so that a visitor
  // returning to this page gets the same view back.
  var storageKey = 'artifactsTable:' + window.location.pathname;
  function loadState(){
    try {
      var s = window.localStorage.getItem(storageKey);
      var st = s ? JSON.parse(s) : null;
      return (st && typeof st === 'object') ? st : {};
    } catch(e) { return {}; }
  }
  function saveState(){
    if (!table) return;
    var info = table.page.info();
    pageLength = info.length;
    var st = {
      grouping:   grouping,
      headings:   headings,
      types:      selectedTypes,
      categories: selectedCategories,
      text:       colTextFilters,
      start:      info.start,
      length:     info.length,
      order:      table.order()
    };
    try { window.localStorage.setItem(storageKey, JSON.stringify(st)); } catch(e) {}
  }
  function validOrder(o){
    if (!Array.isArray(o) || !o.length) return null;
    for (var i = 0; i < o.length; i++) {
      var e = o[i];
      if (!Array.isArray(e) || e.length < 2) return null;
      if (typeof e[0] !== 'number' || e[0] < 0 || e[0] >= columnDefs.length) return null;
      if (e[1] !== 'asc' && e[1] !== 'desc') return null;
    }
    return o.map(function(e){ return [e[0], e[1]]; });
  }

  // Explicit query categories win; otherwise a recognized fragment supplies
  // one category. A fragment-only URL uses the same defaults as ?categories=...
  // rather than inheriting unrelated saved filters.
  function loadUrlView(search = window.location.search, hash = window.location.hash) {
    var state = loadParameters(search);
    var category = categoryFromFragment(hash);
    if (category !== null && !(new URLSearchParams(search)).has('categories')) {
      state = state || loadParameters('?categories=');
      state.categories = [category];
    }
    return state;
  }

  var viewState = loadUrlView() || loadState();
  if (typeof viewState.grouping === 'boolean') grouping = viewState.grouping;
  if (HEADINGS_MODES.indexOf(viewState.headings) !== -1) headings = viewState.headings;
  if (Array.isArray(viewState.types)) {
    selectedTypes = viewState.types.filter(function(v){ return uniqueTypes.indexOf(v) !== -1; });
  }
  if (Array.isArray(viewState.categories)) {
    selectedCategories = viewState.categories.filter(function(v){ return uniqueCategories.indexOf(v) !== -1; });
  }
  if (viewState.text && typeof viewState.text === 'object') {
    TEXT_FILTER_KEYS.forEach(function(k){
      if (typeof viewState.text[k] === 'string' && viewState.text[k]) colTextFilters[k] = viewState.text[k];
    });
  }
  if (viewState.text && typeof viewState.text.value === 'string') {
    anyTextFilter = viewState.text.value;
  }  
  if (typeof viewState.length === 'number' && viewState.length > 0) pageLength = viewState.length;
  var initialView = {
    start: (typeof viewState.start === 'number' && viewState.start > 0) ? viewState.start : 0,
    order: validOrder(viewState.order)
  };

  // Custom row filter — registered once globally
  if (!jQuery.fn.dataTable.ext.__artifactsTextFilterRegistered) {
    jQuery.fn.dataTable.ext.__artifactsTextFilterRegistered = true;
    jQuery.fn.dataTable.ext.search.push(function(settings, dataArr, dataIndex){
      if (settings.nTable.id !== 'artifactsTable') return true;
      var row = settings.aoData[dataIndex]._aData;
      if (anyTextFilter) {
        var anyNeedle = anyTextFilter.toLowerCase();
        var anyMatch = TEXT_FILTER_KEYS.some(function(k){
          return String(row[k] == null ? '' : row[k]).replace(/<[^>]*>/g, '').toLowerCase().indexOf(anyNeedle) !== -1;
        });
        if (!anyMatch) return false;
      }
      for (var key in colTextFilters) {
        var needle = colTextFilters[key];
        if (!needle) continue;
        var cell = String(row[key] == null ? '' : row[key]).replace(/<[^>]*>/g, '');
        if (cell.toLowerCase().indexOf(needle.toLowerCase()) === -1) return false;
      }
      return true;
    });
  }

  function chipHtml(v){
    return '<span class="dt-filter-chip"><span>' + escapeHtml(v) + '</span>' +
           '<button type="button" class="dt-filter-chip-remove" data-value="' + escapeHtml(v) + '" aria-label="Remove">×</button></span>';
  }

  // Plain multi-select popup (used for Type, dropped into filter cell)
  function makeFilterPopup(id, label, values, selected){
    var wrap = document.createElement('div');
    wrap.className = 'dt-filter-popup';
    wrap.setAttribute('data-id', id);
    wrap.innerHTML =
      '<button type="button" class="dt-filter-trigger' + (selected.length ? ' has-filter' : '') + '" aria-expanded="false">' +
        '<span>' + escapeHtml(label) + '</span>' +
        '<span class="caret">▾</span>' +
      '</button>' +
      '<div class="dt-filter-selected">' + selected.map(chipHtml).join('') + '</div>' +
      '<div class="dt-filter-menu" hidden>' +
        '<div class="dt-filter-menu-header"><span>' + escapeHtml(label) + '</span><button type="button" class="dt-filter-menu-clear">' + escapeHtml(clearAllLabel) + '</button></div>' +
        values.map(function(v){
          return '<label><input type="checkbox" value="' + escapeHtml(v) + '"' + (selected.indexOf(v) !== -1 ? ' checked' : '') + '/><span>' + escapeHtml(v) + '</span></label>';
        }).join('') +
      '</div>';
    return wrap;
  }

  // Category popup — same shape, plus a grouping-toggle row pinned at top
  function makeCategoryPopup(){
    var wrap = document.createElement('div');
    wrap.className = 'dt-filter-popup';
    wrap.setAttribute('data-id', 'category');
    wrap.innerHTML =
      '<button type="button" class="dt-filter-trigger' + (selectedCategories.length ? ' has-filter' : '') + '" aria-expanded="false">' +
        '<span>' + escapeHtml(categoryLabel) + '</span>' +
        '<span class="caret">▾</span>' +
      '</button>' +
      '<div class="dt-filter-selected">' + selectedCategories.map(chipHtml).join('') + '</div>' +
      '<div class="dt-filter-menu" hidden>' +
        '<div class="dt-filter-menu-header"><span>' + escapeHtml(categoryLabel) + '</span><button type="button" class="dt-filter-menu-clear">' + escapeHtml(clearAllLabel) + '</button></div>' +
        '<label class="dt-grouping-row"><input type="checkbox" id="artifactsGroupToggle"' + (grouping ? ' checked' : '') + '/><span>' + escapeHtml(useGroupingLabel) + '</span></label>' +
        '<div class="dt-menu-divider"></div>' +
        uniqueCategories.map(function(v){
          return '<label><input type="checkbox" value="' + escapeHtml(v) + '"' + (selectedCategories.indexOf(v) !== -1 ? ' checked' : '') + '/><span>' + escapeHtml(v) + '</span></label>';
        }).join('') +
      '</div>';
    return wrap;
  }

  // Headings popup: single choice, so radios instead of checkboxes, and no chips or Clear all
  function makeHeadingsPopup(){
    var wrap = document.createElement('div');
    wrap.className = 'dt-filter-popup';
    wrap.setAttribute('data-id', 'headings');
    wrap.innerHTML =
      '<button type="button" class="dt-filter-trigger' + (headings !== 'full' ? ' has-filter' : '') + '" aria-expanded="false">' +
        '<span>' + escapeHtml(headingsLabel) + '</span>' +
        '<span class="caret">▾</span>' +
      '</button>' +
      '<div class="dt-filter-menu" hidden>' +
        '<div class="dt-filter-menu-header"><span>' + escapeHtml(headingsLabel) + '</span></div>' +
        HEADINGS_MODES.map(function(v){
          return '<label><input type="radio" name="artifactsHeadings" value="' + v + '"' + (headings === v ? ' checked' : '') + '/><span>' + escapeHtml(headingsModeLabels[v]) + '</span></label>';
        }).join('') +
      '</div>';
    return wrap;
  }

  // Register Category and Headings popups as layout features
  if (!jQuery.fn.dataTable.feature.__artifactsToolsRegistered) {
    jQuery.fn.dataTable.feature.__artifactsToolsRegistered = true;
    jQuery.fn.dataTable.feature.register('filterByCategory', makeCategoryPopup);
    jQuery.fn.dataTable.feature.register('headingsSelect', makeHeadingsPopup);
  }

  // Hiding is done with CSS classes on the table so switching modes needs no redraw
  function applyHeadings(){
    jQuery(tableEl).removeClass('artifacts-headings-title artifacts-headings-none');
    if (headings !== 'full') jQuery(tableEl).addClass('artifacts-headings-' + headings);
    jQuery('.dt-filter-popup[data-id="headings"] .dt-filter-trigger').toggleClass('has-filter', headings !== 'full');
  }

  function setHeaderFilterMark(colIdx, active){
    if (!table) return;
    // Use the visible column index so we target the TITLE row's <th>, not the filter row's
    var visIdx = table.column(colIdx).index('visible');
    jQuery('#artifactsTable thead tr:first-child th').eq(visIdx).toggleClass('has-filter', active);
  }

  // Apply the Type / Category multi-select to the table. doRedraw === false only updates the
  // search state and popup chrome (used while (re)building the table).
  function applyFilter(id, doRedraw){
    var colIdx = (id === 'type') ? TYPE_COL : CATEGORY_COL;
    var values = (id === 'type') ? selectedTypes : selectedCategories;
    if (values.length === 0) {
      table.column(colIdx).search('');
    } else {
      table.column(colIdx).search(buildSearchPattern(values), true, false);
    }
    var $popup = jQuery('.dt-filter-popup[data-id="' + id + '"]');
    // Keep checkboxes aligned with URL-driven changes as well as user changes.
    $popup.find('input[type=checkbox]:not(#artifactsGroupToggle)').each(function(){
      this.checked = values.indexOf(this.value) !== -1;
    });
    // Re-render selected chips
    $popup.find('.dt-filter-selected').html(values.map(chipHtml).join(''));
    if (values.length) {
      $popup.find('.dt-filter-trigger').addClass('has-filter');
    } else {
      $popup.find('.dt-filter-trigger').removeClass('has-filter');
    }
    // Mark visible column header (only for type — category column is hidden)
    if (id === 'type') setHeaderFilterMark(colIdx, values.length > 0);
    if (doRedraw !== false) table.column(colIdx).draw();
  }

  function buildConfig(grouping, view){
    var cfg = {
      orderCellsTop: true,
      layout: {
        topStart: ['filterByCategory', 'headingsSelect'],
        topEnd: ['paging', 'pageLength'],
        bottomStart: 'info',
        bottomEnd: 'paging'
      },
      data: data,
      columns: columnDefs,
      order: view.order || (grouping ? [[0, 'asc']] : [[TITLE_COL, 'asc']]),
      pageLength: pageLength,
      lengthMenu: [[10, 25, 50, 100, 200, 500, 1000], [10, 25, 50, 100, 200, 500, 1000]]
    };
    if (grouping) {
      cfg.orderFixed = [[0, 'asc']];
      cfg.rowGroup = {
        dataSrc: 'g',
        startRender: function(rows, group){
          var first = rows.data().toArray()[0];
          var desc = first && groupDescriptions[first.gid];
          var $header = jQuery('<tr/>').append(
            jQuery('<td/>').attr('colspan', VISIBLE_COLS).addClass('artifacts-group-header')
          );
          var $cell = $header.find('td');
          jQuery('<div/>').addClass('artifacts-group-name').text(group).appendTo($cell);
          if (desc) {
            jQuery('<div/>').addClass('artifacts-group-desc').html(desc).appendTo($cell);
          }
          return $header;
        }
      };
    }
    return cfg;
  }

  var table;
  // view: { start, order } — the page offset and sort order to restore (both optional)
  function renderTable(grouping, view){
    view = view || {};
    if (table) table.destroy();
    table = jQuery('#artifactsTable').DataTable(buildConfig(grouping, view));
    applyHeadings();

    // Drop the Type multi-select into its column's filter cell
    var typeCell = document.getElementById('filterCellType');
    typeCell.innerHTML = '';
    typeCell.appendChild(makeFilterPopup('type', typeLabel, uniqueTypes, selectedTypes));

    // Wire text inputs for Title / Id / Description — use the custom row filter.
    // Also push the current (possibly restored) filter values into the inputs and header marks.
    jQuery('#artifactsTable thead tr.filters input[type=text]').each(function(){
      var key = this.getAttribute('data-col');
      this.value = colTextFilters[key] || '';
      setHeaderFilterMark(colIndex(key), !!this.value);
    }).off('.artifactsFilter').on('input.artifactsFilter change.artifactsFilter', function(){
      var key = this.getAttribute('data-col');
      colTextFilters[key] = this.value;
      table.draw();
      setHeaderFilterMark(colIndex(key), !!this.value);
    }).on('click.artifactsFilter', function(e){ e.stopPropagation(); });

    // Re-apply multi-select state (table was destroyed; popup DOM was rebuilt), then draw once
    applyFilter('type',     false);
    applyFilter('category', false);
    table.draw(false);

    // Restore the page the visitor was on, if it still exists after filtering
    if (view.start) {
      var len = table.page.len();
      var pages = table.page.info().pages;
      var pg = len > 0 ? Math.floor(view.start / len) : 0;
      if (pg > 0 && pg < pages) table.page(pg).draw(false);
    }
  }

  // Persist the view after every draw (page change, sort, length change, filter)
  jQuery(document).on('draw.dt', '#artifactsTable', saveState);

  // DataTables stripes with tr:nth-child, which counts group rows even when Headings = None hides
  // them. Mark alternate data rows so the CSS can stripe on data rows alone in that mode.
  jQuery(document).on('draw.dt', '#artifactsTable', function(){
    jQuery('#artifactsTable > tbody > tr').not('.dtrg-group').each(function(i){
      jQuery(this).toggleClass('artifacts-stripe', i % 2 === 0);
    });
  });

  renderTable(grouping, initialView);

  // Apply fragment links and Back/Forward navigation without reloading the page.
  // Preserve the current grouping, other filters, length and sort; start on page 1.
  var fragmentControlsCategory = categoryFromFragment() !== null &&
    !(new URLSearchParams(window.location.search)).has('categories');
  window.addEventListener('hashchange', function(){
    if ((new URLSearchParams(window.location.search)).has('categories')) return;
    var category = categoryFromFragment();
    if (category === null) {
      // Unrelated/invalid anchors do not alter the current view. Removing a
      // previously recognized fragment clears its category filter.
      if (window.location.hash || !fragmentControlsCategory) return;
      selectedCategories = [];
      fragmentControlsCategory = false;
    } else {
      selectedCategories = [category];
      fragmentControlsCategory = true;
    }
    applyFilter('category');
  });

  // ----- Document-delegated handlers (survive table rebuilds) -----

  // Grouping checkbox (lives inside the Category menu now)
  jQuery(document).on('change', '#artifactsGroupToggle', function(e){
    e.stopPropagation();
    grouping = this.checked;
    // Sort semantics differ between grouped and flat views, so fall back to the default order and first page
    renderTable(grouping, {});
  });

  jQuery(document).on('change', 'input[name=artifactsHeadings]', function(){
    headings = this.value;
    applyHeadings();
    saveState();
  });

  // Open/close popup
  jQuery(document).on('click', '.dt-filter-trigger', function(e){
    e.stopPropagation();
    var $popup = jQuery(this).closest('.dt-filter-popup');
    var $menu  = $popup.find('.dt-filter-menu');
    var wasOpen = !$menu.prop('hidden');
    jQuery('.dt-filter-menu').prop('hidden', true);
    jQuery('.dt-filter-trigger').attr('aria-expanded', 'false');
    if (!wasOpen) { $menu.prop('hidden', false); jQuery(this).attr('aria-expanded', 'true'); }
  });
  jQuery(document).on('click', '.dt-filter-menu', function(e){ e.stopPropagation(); });
  jQuery(document).on('click', function(){
    jQuery('.dt-filter-menu').prop('hidden', true);
    jQuery('.dt-filter-trigger').attr('aria-expanded', 'false');
  });

  // Category/Type checkboxes inside menus (skip the grouping toggle — handled above)
  jQuery(document).on('change', '.dt-filter-menu input[type=checkbox]:not(#artifactsGroupToggle)', function(){
    var $popup = jQuery(this).closest('.dt-filter-popup');
    var id = $popup.attr('data-id');
    var values = $popup.find('input[type=checkbox]:not(#artifactsGroupToggle):checked').map(function(){ return this.value; }).get();
    if (id === 'type') selectedTypes = values; else selectedCategories = values;
    applyFilter(id);
  });

  // Clear-all
  jQuery(document).on('click', '.dt-filter-menu-clear', function(e){
    e.stopPropagation();
    var $popup = jQuery(this).closest('.dt-filter-popup');
    var id = $popup.attr('data-id');
    $popup.find('input[type=checkbox]:not(#artifactsGroupToggle)').prop('checked', false);
    if (id === 'type') selectedTypes = []; else selectedCategories = [];
    applyFilter(id);
  });

  // Remove a single chip
  jQuery(document).on('click', '.dt-filter-chip-remove', function(e){
    e.stopPropagation();
    var $popup = jQuery(this).closest('.dt-filter-popup');
    var id = $popup.attr('data-id');
    var value = jQuery(this).attr('data-value');
    // Uncheck the corresponding menu checkbox
    $popup.find('input[type=checkbox]:not(#artifactsGroupToggle)').each(function(){
      if (this.value === value) this.checked = false;
    });
    if (id === 'type') selectedTypes = selectedTypes.filter(function(v){ return v !== value; });
    else                selectedCategories = selectedCategories.filter(function(v){ return v !== value; });
    applyFilter(id);
  });
});