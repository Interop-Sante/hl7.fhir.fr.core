try {
  var currentTabIndex = sessionStorage.getItem('fhir-resource-tab-index');
} catch(exception) {
}

if (!currentTabIndex)
  currentTabIndex = '0';

$( '#tabs' ).tabs({
  active: currentTabIndex,
  activate: function( event, ui ) {
    var active = $('.selector').tabs('option', 'active');
    currentTabIndex = ui.newTab.index();
    document.activeElement.blur();
    try {
      sessionStorage.setItem('fhir-resource-tab-index', currentTabIndex);
    } catch(exception) {
    }
  }
});

$(document).ready(function() {
// Check if there's a hash/fragment in the URL
    if (window.location.hash) {
        var hash = window.location.hash;
        var targetId = hash.substring(1); // Remove the # symbol
    
        // Try to find the element by id or name attribute
        var targetElement = document.getElementById(targetId);
        if (!targetElement) {
            targetElement = document.querySelector('a[name="' + targetId + '"]');
        }
    
        if (targetElement) {
            // Find if this element is inside a jQuery UI tab
            var $tabPanel = $(targetElement).closest('.ui-tabs-panel');
    
            if ($tabPanel.length > 0) {
                // Get the tab index
                var $tabsContainer = $tabPanel.closest('.ui-tabs');
                var panelId = $tabPanel.attr('id');
                var $tabLink = $tabsContainer.find('a[href="#' + panelId + '"]');
    
                if ($tabLink.length > 0) {
                    var tabIndex = $tabLink.parent().index();
    
                    // Activate the tab
                    $tabsContainer.tabs('option', 'active', tabIndex);
    
                    // Scroll to the element after a short delay to ensure tab is rendered
                    setTimeout(function() {
                        targetElement.scrollIntoView({ behavior: 'smooth', block: 'start' });
                    }, 100);
                }
            } else {
                // If not in a tab, just scroll to it
                targetElement.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        }
    }
});