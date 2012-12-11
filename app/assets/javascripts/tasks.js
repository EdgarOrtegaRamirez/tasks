$(function(){
  $(".btn-edit").live("click",function(e){
    $( "#datepicker" ).datepicker({
      'dateFormat': 'yy-mm-dd'
    });

    $("#update_task .modal-body form")
      .attr("action",$(this).data('action'))
      .attr("method",'put');
  });

  $("#by-date").live("click",function(e){
    $("#collapse-by-date").collapse('toggle');
  });

  $("#by-location").live("click",function(e){
    $("#collapse-by-location").collapse('toggle');
  });
});