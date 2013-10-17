require 'spec_helper'

describe AccountsController do

  describe "GET index" do
    it "assigns all accounts as @accounts" do
      account = FactoryGirl.create(:account)
      get :index
      assigns(:accounts).should eq([account])
    end
  end

  describe "POST create" do
    it "create a new account" do
      expect{
        post :create, account: FactoryGirl.attributes_for(:account)
      }.to change(Account, :count).by(1)
    end

    it "update a account" do
      account = FactoryGirl.create(:account)
      account.name = "Conta Alterada"
      post :edit, id:account , account: account
      assigns(:account).should eq(account)
    end

    it "assigns a newly created account as @account" do
      post :create, account: FactoryGirl.attributes_for(:account)
      assigns(:account).should be_a(Account)
      assigns(:account).should be_persisted
    end

    it "redirects to the created account" do
      post :create, account: FactoryGirl.attributes_for(:account)
      response.should redirect_to(Account)
    end
  end

  describe "DELETE destroy" do

    it "deletes the account" do
      account = FactoryGirl.create(:account)
      expect{
        delete :destroy, id: account
      }.to change(Account,:count).by(-1)
    end

    it "redirects to accounts#index" do
      account = FactoryGirl.create(:account)
      delete :destroy, id: account
      response.should redirect_to accounts_url
    end
  end

end