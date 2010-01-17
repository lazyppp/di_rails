require 'test_helper'

class WebPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_page" do
    assert_difference('WebPage.count') do
      post :create, :web_page => { }
    end

    assert_redirected_to web_page_path(assigns(:web_page))
  end

  test "should show web_page" do
    get :show, :id => web_pages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => web_pages(:one).to_param
    assert_response :success
  end

  test "should update web_page" do
    put :update, :id => web_pages(:one).to_param, :web_page => { }
    assert_redirected_to web_page_path(assigns(:web_page))
  end

  test "should destroy web_page" do
    assert_difference('WebPage.count', -1) do
      delete :destroy, :id => web_pages(:one).to_param
    end

    assert_redirected_to web_pages_path
  end
end
