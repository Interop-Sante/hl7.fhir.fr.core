$(function () {

  const $table = $("table.fhir-conformance-list");

  /* Exclude header row (0) and filter row (1) */
  const $header = $table.find("tr").first();
  const $rows = $table.find("tr").slice(2);

  const colId = 0;
  const colExpect = 1;
  const colCond = 2;
  var colActor = -1;
  var colCat = -1;
  var colRule = -1;
  
  var i = 0;
  var hasIds = false;
  $headerCells = $header.children("th,td");
  $headerCells.each(function () {
    if ($(this).attr("id") === "fcl-actor" || $(this).text() == "Actor(s)") {
      colActor = i;
      hasIds = true;
    } else if ($(this).attr("id") === "fcl-cat" || $(this).text() == "Category(ies)") {
      colCat = i;
      hasIds = true;
    } else if ($(this).attr("id") === "fcl-rule" || $(this).text() == "Rule") {
      colRule = i;
      hasIds = true;
    }
    i++;
  });
  
  if (!hasIds) {
    colActor = 3;
    colCat = 4;
    colRule = 5;
  }

  function normalize(text) {
    return text.replace(/\s+/g, " ").trim();
  }

  function applyFilters() {

    const idFilter   = normalize($("input[name='filterid']").val() || "").toLowerCase();
    const ruleFilter = normalize($("input[name='filterrule']").val() || "").toLowerCase();

    /* Selected expectations (exact tokens) */
    const expectations = $("input[name^='expect']:checked")
      .map(function () {
        return normalize(this.nextSibling.nodeValue);
      })
      .get();

    /* Selected actors */
    const actors = $("input[name^='actor']:checked")
      .map(function () {
        return $(this).next("a").text().trim();
      })
      .get();

    /* Selected categories */
    const categories = $("input[name^='category']:checked")
      .map(function () {
        return normalize(this.nextSibling.nodeValue).replace(/^\xa0/, "");
      })
      .get();

    const conditional = $("input[name='conditionFilter']:checked").val();

    $rows.each(function () {

      const $cells = $(this).children("th,td");

      const idText   = $cells.eq(colId).text().toLowerCase();
      const condText = $cells.eq(colCond).text();
      const ruleText = $cells.eq(colRule).text().toLowerCase();

      const hasConditionalX = /\bX\b/.test(condText);

      /* Extract expectation tokens (split on <br/>) */
      const rowExpectations = $cells.eq(colExpect)
        .html()
        .split(/<br\s*\/?>/i)
        .map(e => normalize($("<div>").html(e).text()))
        .filter(Boolean);

      /* Extract actors (exact anchor match) */
      const rowActors = $cells.eq(colActor).find("a")
        .map(function () {
          return $(this).text().trim();
        })
        .get();

      /* Extract categories (exact tokens) */
      rowCategories = [];
      if (colCat != -1) {
        rowCategories = $cells.eq(colCat)
          .text()
          .split(/<br\s*\/?>/i)
          .map(c => $("<div>").html(c).text().trim())
          .filter(Boolean);
      }

      let visible = true;

      /* Id filter */
      if (idFilter && !idText.includes(idFilter)) {
        visible = false;
      }

      /* Expectation filter — exact token match */
      if (expectations.length &&
          !expectations.some(e => rowExpectations.includes(e))) {
        visible = false;
      }

      /* Conditional filter */
      if (conditional === "true" && !hasConditionalX) {
        visible = false;
      }
      if (conditional === "false" && hasConditionalX) {
        visible = false;
      }

      /* Actor filter */
      if (actors.length &&
          !actors.some(a => rowActors.includes(a))) {
        visible = false;
      }

      /* Category filter */
      if (colCat != -1) {
        if (categories.length &&
            !categories.some(c => rowCategories.includes(c))) {
          visible = false;
        }
      }

      /* Rule filter */
      if (ruleFilter && !ruleText.includes(ruleFilter)) {
        visible = false;
      }

      $(this).toggle(visible);
    });
  }

  /* Apply filtering on any control change */
  $table.on("change keyup", "input", applyFilters);

  /* Clear Filters */
  $("input[name='clearFilters']").on("click", function () {
    $table.find("input[type='text']").val("");
    $table.find("input[type='checkbox']").prop("checked", false);
    $("#conditionAny").prop("checked", true);
    $rows.show();
  });

  /* Default state */
  $("#conditionAny").prop("checked", true);

});
