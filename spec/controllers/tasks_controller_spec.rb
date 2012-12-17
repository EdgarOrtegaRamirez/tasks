require 'spec_helper'

describe TasksController do

  login_user

  describe "GET new" do
    it "assigns a new task as @task" do
      list = FactoryGirl.create(:list)
      get :new, list_id: list.id
      assigns(:task).should be_a_new(Task)
    end
  end

  describe "GET edit" do
    it "assigns the requested task as @task" do
      list = FactoryGirl.create(:list)
      task = FactoryGirl.create(:task)
      get :edit, {id: task.to_param, list_id: list.id}
      assigns(:task).should eq(task)
    end
  end
  
end
