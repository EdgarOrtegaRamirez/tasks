require 'spec_helper'

describe ListsController do
  
  login_user

  describe "GET 'index'" do
    it "assigns all list from logged in user as @lists" do
      list = FactoryGirl.create(:list)
      get :index
      assigns(:lists).should eq([list])
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "returns http success" do
      post 'create'
      response.should be_success
    end
  end

  describe "GET show" do
    it "assigns the requested list as @list" do
      list = FactoryGirl.create(:list)
      get :show, {id: list.to_param}
      assigns(:list).should eq(list)
    end
  end

  describe "PUT 'edit'" do
    it "returns http success" do
      put 'edit'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "returns http success" do
      get 'update'
      response.should be_success
    end
  end

end
