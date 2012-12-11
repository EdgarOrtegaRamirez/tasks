$(function(){
  $(".btn-edit").live("click",function(e){
    $(".modal-body form").attr("action",$(this).data('action'));
  });

  $("#by-date").live("click",function(e){
    $("#collapseby-date").collapse('toggle');
  });

  $("#by-location").live("click",function(e){
    $("#collapse-by-location").collapse('toggle');
  });
});