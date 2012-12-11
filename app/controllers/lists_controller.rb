class ListsController < ApplicationController
  
  def index
    @list = List.new
    @lists = List.all
  end

  def create
    @list = List.new(params[:list])
    @list.user = current_user
    
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

  def edit
  end

  def update
  end
end
