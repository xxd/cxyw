require 'test_helper'

class RecordSoftwaresControllerTest < ActionController::TestCase
  setup do
    @record_software = record_softwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:record_softwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record_software" do
    assert_difference('RecordSoftware.count') do
      post :create, record_software: @record_software.attributes
    end

    assert_redirected_to record_software_path(assigns(:record_software))
  end

  test "should show record_software" do
    get :show, id: @record_software.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record_software.to_param
    assert_response :success
  end

  test "should update record_software" do
    put :update, id: @record_software.to_param, record_software: @record_software.attributes
    assert_redirected_to record_software_path(assigns(:record_software))
  end

  test "should destroy record_software" do
    assert_difference('RecordSoftware.count', -1) do
      delete :destroy, id: @record_software.to_param
    end

    assert_redirected_to record_softwares_path
  end
end
