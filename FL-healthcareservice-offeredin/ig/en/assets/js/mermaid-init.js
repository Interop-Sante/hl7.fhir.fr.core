// Render ```mermaid code blocks as diagrams. mermaid.js is large, so it is
// loaded only on pages that have a diagram; other pages never fetch it.
(function () {
  // mermaid.js sits next to this script; pages live at different depths.
  var self = document.currentScript;
  var base = self ? self.src.replace(/[^\/]*$/, '') : 'assets/js/';

  document.addEventListener('DOMContentLoaded', function () {
    var codes = document.querySelectorAll('pre.language-mermaid code.language-mermaid');
    Array.prototype.forEach.call(codes, function (code) {
      var pre = code.parentNode;
      var div = document.createElement('div');
      div.className = 'mermaid';
      div.textContent = code.textContent;
      pre.parentNode.replaceChild(div, pre);
    });
    if (!document.querySelector('.mermaid')) return;

    var script = document.createElement('script');
    script.src = base + 'mermaid.js';
    script.onload = function () {
      mermaid.initialize({ startOnLoad: false, securityLevel: 'sandbox' });
      mermaid.run();
    };
    document.head.appendChild(script);
  });
})();
