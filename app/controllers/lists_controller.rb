class ListsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!
  respond_to :js, except: [:index]

  def index
    @list = List.new
    @lists = current_user.lists
  end

  def create
    @list = current_user.lists.build(params[:list])
    @list.save
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end

  def destroy
    @list = List.destroy(params[:id])
  end
end
