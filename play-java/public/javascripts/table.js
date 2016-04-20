var $TABLE = $('#table');

$('.table-add').click(function () {
  var $clone = $TABLE.find('tr.hide').clone(true).removeClass('hide table-line');
  $TABLE.find('table').append($clone);
});

$('.table-remove').click(function () {
  $(this).parents('tr').detach();
});

$("#numArgs").change(function () {
    var numArgs = $(this).val();

    //Count number of input columns
    var colCount = $TABLE.find('tr:first th').length - 2;

    $TABLE.find('tr').each(function () {
        var trow = $(this);
        if(colCount < numArgs) {
            var colsToAdd = numArgs - colCount;
            for(i = 0; i < colsToAdd; i++) {
                if(trow.index() === 0) {
                    trow.find('th').eq(colCount + i - 1).after('<th>Arg' + (colCount + i + 1) + '</th>')
                } else {
                    var $clone = trow.find('td.hide').clone(true).removeClass('hide');
                    var id = colCount + i;
                    $clone.find("#examples_0_inputs_0").attr("name","examples[0].inputs[" + id + "]").attr("id", "examples_0_inputs_" + id);
                    $clone.find("#examples_0_inputs_0_field").attr("id", "examples_0_inputs_" + id + "_field");
                    $clone.find("label[for=examples_0_inputs_0]").attr("for", "examples_0_inputs_" + id);
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
