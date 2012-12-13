$(function(){
  $('#new_task_button, .edit_task_button').live("click", function(e) {
    e.preventDefault();
    var url = $(this).data("action");
    $.ajax({
        url: url, type: 'GET',
        complete: function(data){
          $('#task_dialog').html(data.responseText).modal('show');
          $('#datetimepicker').datetimepicker({
            dateFormat: "yy-mm-dd"
          });
        }
      });
  });
  
  $('.task_check').live('click', function(){
    $('#edit_task_'+$(this).data('id')).submit();
  });
 

  $("#task_remind_by_date").live("click",function(e){
    $("#collapse-by-date").collapse('toggle');
  });

  $("#task_remind_by_location").live("click",function(e){
    $("#collapse-by-location").collapse('toggle');
  });
});