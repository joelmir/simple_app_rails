require 'test_helper'

class JuridicalPeopleControllerTest < ActionController::TestCase
  setup do
    @juridical_person = juridical_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juridical_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create juridical_person" do
    assert_difference('JuridicalPerson.count') do
      post :create, juridical_person: { address: @juridical_person.address, cnpj: @juridical_person.cnpj, name: @juridical_person.name }
    end

    assert_redirected_to juridical_person_path(assigns(:juridical_person))
  end

  test "should show juridical_person" do
    get :show, id: @juridical_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @juridical_person
    assert_response :success
  end

  test "should update juridical_person" do
    put :update, id: @juridical_person, juridical_person: { address: @juridical_person.address, cnpj: @juridical_person.cnpj, name: @juridical_person.name }
    assert_redirected_to juridical_person_path(assigns(:juridical_person))
  end

  test "should destroy juridical_person" do
    assert_difference('JuridicalPerson.count', -1) do
      delete :destroy, id: @juridical_person
    end

    assert_redirected_to juridical_people_path
  end
end
