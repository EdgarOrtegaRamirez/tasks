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

  describe "GET new" do
    it "assigns a new list as @list" do
      get :new, {}
      assigns(:list).should be_a_new(List)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new List" do
        list = FactoryGirl.create(:list)
        expect {
          post :create, {list: list}
        }.to change(List, :count).by(1)
      end

      it "assigns a newly created list as @list" do
        list = FactoryGirl.create(:list)
        post :create, {list: list}
        assigns(:list).should be_a(List)
        assigns(:list).should be_persisted
      end

      it "render lists/create partial" do
        list = FactoryGirl.create(:list)
        post :create, {list: list}
        response.should render_template(partial: 'lists/create')
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved list as @list" do
        List.any_instance.stub(:save).and_return(false)
        list = FactoryGirl.create(:list)
        post :create, {list: list}
        assigns(:list).should be_a_new(List)
      end
    end
  end

  describe "GET show" do
    it "assigns the requested list as @list" do
      list = FactoryGirl.create(:list)
      get :show, {id: list.to_param}
      assigns(:list).should eq(list)
    end
  end

end
