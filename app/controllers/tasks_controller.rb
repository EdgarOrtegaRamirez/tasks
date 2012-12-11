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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(params[:task])

    respond_to do |format|
      format.js {render jsonp: @task}
   end
  end
end
