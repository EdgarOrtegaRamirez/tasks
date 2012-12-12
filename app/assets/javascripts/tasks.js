$(function(){
  $('#new_task_button, .edit_task_button').live("click", function(e) {
    e.preventDefault();
    var url = $(this).data("action");
    $.ajax({
        url: url, type: 'GET',
        complete: function(data){
          $('#task_dialog').html(data.responseText).modal('show');
        }
      });
  });
 

  $("#task_remind_by_date").live("click",function(e){
    $("#collapse-by-date").collapse('toggle');
  });

  $("#by-location").live("click",function(e){
    $("#collapse-by-location").collapse('toggle');
  });
});