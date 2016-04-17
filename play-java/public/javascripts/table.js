var $TABLE = $('#table');
var $BTN = $('#export-btn');
var $EXPORT = $('#export');

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
                    trow.find('td').eq(colCount + i - 1).after('<td><input type="text" class="form-control" placeholder="Input"/></td>')
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

$('.table-up').click(function () {
  var $row = $(this).parents('tr');
  if ($row.index() === 1) return; // Don't go above the header
  $row.prev().before($row.get(0));
});

$('.table-down').click(function () {
  var $row = $(this).parents('tr');
  $row.next().after($row.get(0));
});

// A few jQuery helpers for exporting only
jQuery.fn.pop = [].pop;
jQuery.fn.shift = [].shift;

$BTN.click(function () {
  var $rows = $TABLE.find('tr:not(:hidden)');
  var headers = [];
  var data = [];
  
  // Get the headers (add special header logic here)
  $($rows.shift()).find('th:not(:empty)').each(function () {
    headers.push($(this).text().toLowerCase());
  });
  
  // Turn all existing rows into a loopable array
  $rows.each(function () {
    var $td = $(this).find('td');
    var h = {};
    
    // Use the headers from earlier to name our hash keys
    headers.forEach(function (header, i) {
      h[header] = $td.eq(i).find("input").val();
    });
    
    data.push(h);
  });
  
  // Output the result
  $EXPORT.text(JSON.stringify(data));
});