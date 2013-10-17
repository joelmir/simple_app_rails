require 'spec_helper'

describe JuridicalPeopleController do

  describe "GET index" do
    it "assigns all accounts as @juridical_people" do
      juridical_person = FactoryGirl.create(:juridical_person)
      get :index
      assigns(:juridical_people).should eq([juridical_person])
    end
  end

  describe "POST create" do
    it "create a new juridical_person" do
      expect{
        post :create, juridical_person: FactoryGirl.attributes_for(:juridical_person)
      }.to change(JuridicalPerson, :count).by(1)
    end

    it "update a juridical_person" do
      juridical_person = FactoryGirl.create(:juridical_person)
      juridical_person.name = "Pessoa Jurica Alterada"
      post :edit, id:juridical_person , account: juridical_person
      assigns(:juridical_person).should eq(juridical_person)
    end

    it "assigns a newly created juridical_person as @juridical_person" do
      post :create, juridical_person: FactoryGirl.attributes_for(:juridical_person)
      assigns(:juridical_person).should be_a(JuridicalPerson)
      assigns(:juridical_person).should be_persisted
    end

    it "redirects to the created juridical_person" do
      post :create, juridical_person: FactoryGirl.attributes_for(:juridical_person)
      response.should redirect_to(JuridicalPerson)
    end
  end

  describe "DELETE destroy" do

    it "deletes the account" do
      juridical_person = FactoryGirl.create(:juridical_person)
      expect{
        delete :destroy, id: juridical_person
      }.to change(JuridicalPerson,:count).by(-1)
    end

    it "redirects to juridical_people#index" do
      juridical_person = FactoryGirl.create(:juridical_person)
      delete :destroy, id: juridical_person
      response.should redirect_to juridical_people_url
    end
  end

end