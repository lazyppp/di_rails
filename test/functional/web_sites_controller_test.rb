require 'test_helper'

class WebSitesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_site" do
    assert_difference('WebSite.count') do
      post :create, :web_site => { }
    end

    assert_redirected_to web_site_path(assigns(:web_site))
  end

  test "should show web_site" do
    get :show, :id => web_sites(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => web_sites(:one).to_param
    assert_response :success
  end

  test "should update web_site" do
    put :update, :id => web_sites(:one).to_param, :web_site => { }
    assert_redirected_to web_site_path(assigns(:web_site))
  end

  test "should destroy web_site" do
    assert_difference('WebSite.count', -1) do
      delete :destroy, :id => web_sites(:one).to_param
    end

    assert_redirected_to web_sites_path
  end
end
