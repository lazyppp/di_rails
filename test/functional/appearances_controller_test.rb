require 'test_helper'

class AppearancesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appearances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appearance" do
    assert_difference('Appearance.count') do
      post :create, :appearance => { }
    end

    assert_redirected_to appearance_path(assigns(:appearance))
  end

  test "should show appearance" do
    get :show, :id => appearances(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => appearances(:one).to_param
    assert_response :success
  end

  test "should update appearance" do
    put :update, :id => appearances(:one).to_param, :appearance => { }
    assert_redirected_to appearance_path(assigns(:appearance))
  end

  test "should destroy appearance" do
    assert_difference('Appearance.count', -1) do
      delete :destroy, :id => appearances(:one).to_param
    end

    assert_redirected_to appearances_path
  end
end
