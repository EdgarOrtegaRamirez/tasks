$ ->
  $("#new_task_button, .edit_task_button").live "click", (e) ->
    e.preventDefault()
    url = $(this).data("action")
    $.ajax
      url: url
      type: "GET"
      complete: (data) ->
        $("#task_dialog").html(data.responseText).modal "show"
        $("#datetimepicker").datetimepicker dateFormat: "yy-mm-dd"


  $(".task_check").live "click", ->
    $("#edit_task_" + $(this).data("id")).submit()

  $("#task_remind_by_date").live "click", (e) ->
    $("#collapse-by-date").collapse "toggle"

  $("#task_remind_by_location").live "click", (e) ->
    $("#collapse-by-location").collapse "toggle"
