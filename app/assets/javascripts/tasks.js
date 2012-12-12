$(function(){
  $(".btn-edit").live("click",function(e){
    $( "#datepicker" ).datetimepicker({
      'dateFormat': 'yy-mm-dd'
    });

    $("#update_task .modal-body form")
      .attr("action",$(this).data('action'))
      .attr("method",'put');
  });

  $("#task_remind_by_date").live("click",function(e){
    $("#collapse-by-date").collapse('toggle');
  });

  $("#by-location").live("click",function(e){
    $("#collapse-by-location").collapse('toggle');
  });
});