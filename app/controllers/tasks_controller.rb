class TasksController < ApplicationController
  before_filter :authenticate_user!

  def new
    @task = Task.new
    @list = List.find(params[:list_id])
    respond_to do |format|
      format.js
    end
  end

  def create
    @list = List.find(params[:list_id])
    @task = Task.new(params[:task])
    @task.list_id = params[:list_id]
    @task.completed = false
    @task.date = nil unless @task.remind_by_date
    @task.address = "" unless @task.remind_by_location
    if @task.save
      respond_to do |format|
        format.js
      end
    else
      
    end
  end

  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    
    respond_to do |format|
      format.js
    end
  end

  def update
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    params[:task][:date] = nil if params[:task][:remind_by_date] == '0'
    params[:task][:address] = "" if params[:task][:remind_by_location] == '0'

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.js
      else
        format.html { render action: "Edit" }
      end
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    respond_to do |format|
      format.js
    end
  end
end
