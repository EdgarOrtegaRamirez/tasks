require 'spec_helper'

describe TasksController do

  login_user

  describe "GET index" do
    it "assigns all tasks from a list as @tasks" do
      task = FactoryGirl.create(:task)
      get :index
      assigns(:tasks).should eq([task])
    end
  end

  describe "GET new" do
    it "assigns a new to_do as @to_do" do
      get :new, {}
      assigns(:to_do).should be_a_new(ToDo)
    end
  end
  
end
