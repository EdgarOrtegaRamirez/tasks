class TasksController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!
  respond_to :js

  def new
    @task = Task.new
    @list = List.find(params[:list_id])
    respond_with :js
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.build(params[:task])
    @task.completed = false
    @task.date = nil unless @task.remind_by_date
    @task.address = "" unless @task.remind_by_location
    @task.save
  end

  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    respond_with :js
  end

  def update
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    params[:task][:date] = nil if params[:task][:remind_by_date] == '0'
    params[:task][:address] = "" if params[:task][:remind_by_location] == '0'
    
    @task.update_attributes(params[:task])
  end

  def destroy
    @task = Task.destroy(params[:id])
  end
end
