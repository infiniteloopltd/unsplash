$(init);
function init() {
    console.log("Jquery Loaded..");
    $("#btnSearch").bind("click", btnSearch_click);
}


function btnSearch_click() {
    callAPI($("#tbSearchTerm").val());
}

function callAPI(searchTerm) {
    if (searchTerm === "") {
        bootbox.alert("Please enter a search term");
        return;
    }
    $("#btnSearch").addClass("disabled");
    console.log("searching: " + searchTerm);
    $.getJSON("/search.aspx?searchTerm=" + searchTerm,
        function (data) {
            $("#btnSearch").removeClass("disabled");
            if (data.results.length === 0) {
                bootbox.alert("Sorry, No Results");
            }
            var tpl = $("#tplItem").html();
            var strHtml = Mustache.render(tpl, data);
            $("#divResults").html(strHtml);
        });
}