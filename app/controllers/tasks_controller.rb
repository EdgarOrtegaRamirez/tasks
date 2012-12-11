class TasksController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @task = Task.new(params[:task])
    @task.list_id = params[:list_id]

    @task.save
    respond_to do |format|
      format.js
    end
  end
end
