function toggleChanges() {
    const checked = $("#showChanges").prop("checked");

    $("body").toggleClass("changes-disabled", !checked);
    localStorage.setItem("showChanges", checked ? "true" : "false");
}

$(document).ready(function() {
    if ($(".modified-content, .new-content").length == 0) {
        $("#toggle-change-display").hide();
    }
});

// --- initialize on page load ---
$(function () {
    const saved = localStorage.getItem("showChanges");

    if (saved !== null) {
        $("#showChanges").prop("checked", saved === "true");
    } else {
        $("#showChanges").prop("checked", true);
    }

    $("#showChanges").on("change", toggleChanges);

    toggleChanges();
});
