require 'spec_helper'

describe UsersController do

  describe "GET index" do
    it "assigns all users as @users" do
      user = FactoryGirl.create(:user)
      get :index
      assigns(:users).should eq([user])
    end
  end

  describe "POST create" do
    it "create a new user" do
      expect{
        post :create, user: FactoryGirl.attributes_for(:user)
      }.to change(User, :count).by(1)
    end

    it "update a user" do
      user = FactoryGirl.create(:user)
      user.name = "Lucas"
      post :edit, id:user , user: user
      assigns(:user).should eq(user)
    end

    it "assigns a newly created user as @user" do
      post :create, user: FactoryGirl.attributes_for(:user)
      assigns(:user).should be_a(User)
      assigns(:user).should be_persisted
    end

    it "redirects to the created user" do
      post :create, user: FactoryGirl.attributes_for(:user)
      response.should redirect_to(User)
    end
  end

  describe "DELETE destroy" do

    it "deletes the user" do
      user = FactoryGirl.create(:user)
      expect{
        delete :destroy, id: user
      }.to change(User,:count).by(-1)
    end

    it "redirects to users#index" do
      user = FactoryGirl.create(:user)
      delete :destroy, id: user
      response.should redirect_to users_url
    end
  end

end