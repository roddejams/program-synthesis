var $CLICKED_TAB;

$(document).on("click", "#task-add-button", function() {
    var $NAV = $("#task-nav");
    var $clone_tab = $NAV.find("li.hide").clone(true).removeClass("hide");
    var $tabCount = $NAV.find('li').length - 2;

    $clone_tab.find("a").attr("href", "#task-" + ($tabCount + 1));
    $(this).before($clone_tab);
    //$clone_tab.tab("show");

    var $clone_body = $("#task-placeholder").clone(true).removeClass("hide");
    $clone_body.attr("id", "task-" + ($tabCount + 1));
    $("#tab-content").append($clone_body);
});

$("#closeModal").on("show.bs.modal", function(e) {
    $CLICKED_TAB = $(e.relatedTarget);
});

$("#closeModal").on("click", "#close-tab", function(e) {
    $($CLICKED_TAB).parents('li').detach();

    var $relatedBody = $CLICKED_TAB.parents('a').attr('href');
    var uuid = $($relatedBody).data('actor-uuid');
    $($relatedBody).detach();

    if(uuid != null) {
        $.ajax({
            type: "DELETE",
            url: "/" + uuid
        });
    }

    $("#task-nav").find('a').eq(1).tab('show');
});