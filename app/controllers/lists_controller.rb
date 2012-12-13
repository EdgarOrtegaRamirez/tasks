class ListsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @list = List.new
    @lists = List.where(user_id: current_user.id)
  end

  def create
    @list = List.new(params[:list])
    @list.user_id = current_user.id
    
    if @list.save
      respond_to do |format|
        format.js
      end
    else

    end
  end

  def show
    @list = List.find(params[:id])
    @tasks = Task.where(list_id: @list.id)
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @list = List.destroy(params[:id])
    respond_to do |format|
      format.js
    end
  end
end
