// ========================================
// Generic Resource Browser
// ========================================

// Configuration passed to init()
let config = null;

// Index data (loaded via script tag)
let indexData = null;
let columns = [];
let dictionaries = {};
let resources = [];

// Column indices (set after loading)
let colIdx = {};

// ========================================
// Utility Functions
// ========================================

// Parse URL parameters based on configured search params
function getUrlParams() {
  const params = new URLSearchParams(window.location.search);
  const result = {};
  
  for (const param of config.searchParams) {
    result[param] = params.get(param) || '';
  }
  
  return result;
}

// Check if any search params are present
function hasSearchParams(params) {
  return config.searchParams.some(param => params[param]);
}

// Escape HTML
function escapeHtml(text) {
  if (!text) return '';
  const div = document.createElement('div');
  div.textContent = text;
  return div.innerHTML;
}

// Get value from a resource row, resolving dictionary references
function getValue(row, colName) {
  const idx = colIdx[colName];
  if (idx === undefined) return null;
  
  const val = row[idx];
  if (val === null || val === undefined || val === -1) return null;
  
  // Check if this column uses a dictionary
  const dict = dictionaries[colName];
  if (dict) {
    if (Array.isArray(val)) {
      return val.map(i => i >= 0 ? dict[i] : null).filter(v => v !== null);
    }
    return val >= 0 ? dict[val] : null;
  }
  
  return val;
}

// Get single string value (first if array)
function getStringValue(row, colName) {
  const val = getValue(row, colName);
  if (Array.isArray(val)) return val[0] || '';
  return val || '';
}

// Check if a value matches the search term (case-insensitive, starts-with)
function matchesSearch(value, searchTerm) {
  if (!searchTerm) return true;
  if (!value) return false;
  
  const lowerSearch = searchTerm.toLowerCase();
  
  if (Array.isArray(value)) {
    return value.some(v => v && v.toLowerCase().includes(lowerSearch));
  }
  
  return value.toLowerCase().includes(lowerSearch);
}

// ========================================
// Search Functions
// ========================================

// Perform the search using the in-memory index
function performSearch(params) {
  const startTime = performance.now();
  const resultsBody = document.getElementById('resultsBody');
  const totalCount = document.getElementById('totalCount');
  const searchTime = document.getElementById('searchTime');

  if (!indexData) {
    resultsBody.innerHTML = '<div class="error">Index not loaded</div>';
    return;
  }

  // Filter resources based on all configured search params
  const matches = resources.filter(row => {
    for (const param of config.searchParams) {
      if (params[param] && !matchesSearch(getValue(row, param), params[param])) {
        return false;
      }
    }
    return true;
  });

  const elapsed = (performance.now() - startTime).toFixed(1);
  
  totalCount.textContent = `(${matches.length} found)`;
  searchTime.textContent = `${elapsed}ms`;

  if (matches.length === 0) {
    resultsBody.innerHTML = '<div class="empty-state">No content found matching your criteria</div>';
    return;
  }

  // Render results table
  const displayResults = matches.slice(0, config.maxResults);
  
  // Build table header from configured columns
  let html = `
    <table class="grid">
      <thead>
        <tr>
          ${config.displayColumns.map(col => `<th>${escapeHtml(col.label)}</th>`).join('')}
        </tr>
      </thead>
      <tbody>
  `;
  
  // Build table rows
  for (const row of displayResults) {
    html += '<tr>';
    
    for (const col of config.displayColumns) {
      const value = getStringValue(row, col.key);
      
      if (col.isLink && value) {
        const id = getStringValue(row, 'id');
        html += `<td><a href="${config.detailPage}?id=${encodeURIComponent(id)}">${escapeHtml(value)}</a></td>`;
      } else {
        html += `<td>${escapeHtml(value)}</td>`;
      }
    }
    
    html += '</tr>';
  }
  
  html += '</tbody></table>';
  
  if (matches.length > config.maxResults) {
    html += `<div class="empty-state">Showing first ${config.maxResults} of ${matches.length} results</div>`;
  }
  
  resultsBody.innerHTML = html;
}

// ========================================
// Index Loading
// ========================================

// Initialize the index from the global variable
function loadIndex() {  
  try {
    if (typeof INDEX === 'undefined') {
      throw new Error('Index not found. Make sure the index JS file is in the same folder.');
    }
    
    indexData = INDEX;
    columns = indexData.columns || [];
    dictionaries = indexData.dictionaries || {};
    resources = indexData.resources || [];
    
    // Build column index map
    columns.forEach((col, idx) => {
      colIdx[col] = idx;
    });
    
    return true;
    
  } catch (error) {
    console.error('Error loading index:', error);
    return false;
  }
}

// ========================================
// Search Page Initialization
// ========================================

function init(cfg) {
  config = cfg;
  const params = getUrlParams();
  
  // Populate form fields from URL params
  for (const param of config.searchParams) {
    const element = document.getElementById(param);
    if (element) {
      element.value = params[param];
    }
  }

  // Load index from global variable
  const loaded = loadIndex();
  
  // If we have search params and index loaded, perform the search
  if (loaded && hasSearchParams(params)) {
    performSearch(params);
  }
}

// ========================================
// Detail Page Functions
// ========================================

// Get id from URL
function getIdParam() {
  const params = new URLSearchParams(window.location.search);
  return params.get('id') || '';
}

// Toggle JSON section visibility
function toggleJson() {
  const content = document.getElementById('jsonContent');
  const toggle = document.getElementById('jsonToggle');
  
  if (content.classList.contains('open')) {
    content.classList.remove('open');
    toggle.textContent = 'Show';
  } else {
    content.classList.add('open');
    toggle.textContent = 'Hide';
  }
}

// Render resource details
function renderResource(res) {
  const narrativeHtml = res.text?.div || '<p>No narrative available</p>';
  
  return `
    <div class="narrative">
      ${narrativeHtml}
    </div>
    
    <div class="json-section">
      <div class="json-header" onclick="toggleJson()">
        <span class="json-title">Raw JSON</span>
        <span class="json-toggle" id="jsonToggle">Show</span>
      </div>
      <div class="json-content" id="jsonContent">
        <pre class="raw-json">${escapeHtml(JSON.stringify(res, null, 2))}</pre>
      </div>
    </div>
  `;
}

// Load and display the resource
function loadResource() {
  const content = document.getElementById('content');
  const id = getIdParam();

  if (!id) {
    content.innerHTML = '<div class="empty-state">No resource ID specified</div>';
    return;
  }

  if (typeof DATA_SET === 'undefined') {
    content.innerHTML = '<div class="error">Data not found. Make sure the data JS file is in the same folder.</div>';
    return;
  }

  const res = DATA_SET[id];

  if (!res) {
    content.innerHTML = `<div class="empty-state">Resource "${escapeHtml(id)}" not found</div>`;
    return;
  }

  content.innerHTML = renderResource(res);

  // Update page title
  const name = res.code?.coding?.[0]?.display || res.name || id;
  document.title = `${name} - ${res.resourceType || 'Resource'} Details`;
}