require 'test_helper'

class InformationFragmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:information_fragments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create information_fragment" do
    assert_difference('InformationFragment.count') do
      post :create, :information_fragment => { }
    end

    assert_redirected_to information_fragment_path(assigns(:information_fragment))
  end

  test "should show information_fragment" do
    get :show, :id => information_fragments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => information_fragments(:one).to_param
    assert_response :success
  end

  test "should update information_fragment" do
    put :update, :id => information_fragments(:one).to_param, :information_fragment => { }
    assert_redirected_to information_fragment_path(assigns(:information_fragment))
  end

  test "should destroy information_fragment" do
    assert_difference('InformationFragment.count', -1) do
      delete :destroy, :id => information_fragments(:one).to_param
    end

    assert_redirected_to information_fragments_path
  end
end
