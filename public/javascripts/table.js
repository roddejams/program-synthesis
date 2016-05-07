var $CLICKED_TAB;

$(document).ready(function() {
   //Set num args dropdown to correct val
    var $TABLE = $('#table');
    var colCount = $TABLE.find('tr:first td').length - 3;
    $("#numArgs").value = colCount;

    //Display generated Haskell if there's any.
    //if($("#codeBody").has('p').length > 0) {
    //   $("#codePanel").removeClass('hide');
    //}

    if(RUNNING) {
        var btn = $('#export-btn');
        btn.button('loading');
        var interval = setInterval(function () {
            $.ajax({
                type: "GET",
                url: "/status",
                dataType: "html",
                statusCode: {
                    200: function (html) {
                        $('#table-container').html(html);
                        clearInterval(interval);
                        btn.button('reset');
                    }
                }
            });
        }, 100)
    }
});

$(document).on("click", "#export-btn", function () {
    var btn = $(this);
    btn.button('loading');

    var interval = setInterval(function () {
        $.ajax({
            type: "GET",
            url: "/status",
            dataType: "html",
            statusCode:  {
                200 :function(html) {
                    $('#table-container').html(html);
                    clearInterval(interval);
                    btn.button('reset');
                }
            }
        });
    }, 100)
});

$(document).on("click", ".task-add", function() {
    var $NAV = $("#task-nav");
    var $clone = $NAV.find("li.hide").clone(true).removeClass("hide");
    $NAV.find("#task-add-button").before($clone);
});

$("#closeModal").on("show.bs.modal", function(e) {
    $CLICKED_TAB = $(e.relatedTarget);
    console.log($CLICKED_TAB);
});

$("#closeModal").on("click", "#close-tab", function(e) {
    $($CLICKED_TAB).parents('li').detach();
});

$(document).on("click", ".table-add", function() {
    var $TABLE = $(document).find("#table");
    //var $TABLE = $("#table");

    var $clone = $TABLE.find('tr.hide').clone(true).removeClass('hide table-line');
    var rowNum = $TABLE.find('tr').length - 2;

    $clone.find('td').each(function() {
        var tcol = $(this);
        if(!tcol.hasClass('hide')) {
            var pos = tcol.index();

            tcol.find("#clone_line_" + pos).attr("name", "examples[" + rowNum + "].inputs[" + pos + "]");
            tcol.find("#clone_line_" + pos).attr("id", "examples_" + rowNum + "_inputs_" + pos);
            tcol.find("#clone_line_" + pos + "_field").attr("id", "examples_" + rowNum + "_inputs_" + pos + "_field");
            tcol.find("label[for=clone_line_" + pos + "]").attr("for", "examples_" + rowNum + "_inputs_" + pos);
        }
    });

    //Change output field to be correct
    $clone.find("#clone_line_out").attr("name", "examples[" + rowNum + "].output");
    $clone.find("#clone_line_out").attr("id", "examples_" + rowNum + "_output");
    $clone.find("#clone_line_out_field").attr("id", "examples_" + rowNum + "_output_field");
    $clone.find("label[for=clone_line_out]").attr("for", "examples_" + rowNum + "_output");

    $TABLE.find('table').append($clone);
});

$(document).on("click", ".table-remove", function() {
  $(this).parents('tr').detach();
});

$(document).on("change", "#numArgs", function() {
    var $TABLE = $('#table');

    var numArgs = $(this).val();
    var colCount = $TABLE.find('tr:first td').length - 3;

    $TABLE.find('tr').each(function () {
        var trow = $(this);
        if(colCount < numArgs) {
            var colsToAdd = numArgs - colCount;
            for(i = 0; i < colsToAdd; i++) {
                if(trow.index() === 0) {
                    var $clone = trow.find('td.hide').clone(true).removeClass('hide');
                    var id = colCount + i;
                    $clone.find("#clone_line_col").attr("name","clone_name_" + id).attr("id", "clone_line_" + id).val("");
                    $clone.find("#clone_line_col_field").attr("id", "clone_line_" + id + "_field");
                    $clone.find("label[for=clone_line_col]").attr("for", "clone_line_" + id);
                    trow.find('td').eq(colCount + i - 1).after($clone);
                } else if(trow.index() === 1) {
                    trow.find('th').eq(colCount + i - 1).after('<th>Arg' + (colCount + i + 1) + '</th>')
                } else {
                    var $clone = trow.find('td.hide').clone(true).removeClass('hide');
                    var id = colCount + i;
                    var rowNum = trow.index() - 2;
                    $clone.find("#clone_line_col").attr("name","examples[" + rowNum +"].inputs[" + id + "]").attr("id", "examples_" + rowNum + "_inputs_" + id).val("");
                    $clone.find("#clone_line_col_field").attr("id", "examples_" + rowNum + "_inputs_" + id + "_field");
                    $clone.find("label[for=clone_line_col]").attr("for", "examples_" + rowNum + "_inputs_" + id);
                    trow.find('td').eq(colCount + i - 1).after($clone);
                }
            }
        } else if(colCount > numArgs) {
            var colsToRemove = colCount - numArgs;
            for(i = 0; i < colsToRemove; i++) {
                trow.find('th').eq(colCount - i - 1).remove();
                trow.find('td').eq(colCount - i - 1).remove();
            }
        }
    });
});
