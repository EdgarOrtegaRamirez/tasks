class TasksController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @task = Task.new(params[:task])
    @task.list_id = params[:list_id]

    if @task.save
      respond_to do |format|
        format.js
      end
    else
      
    end
  end
end
