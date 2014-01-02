require 'test_helper'

class MyDiamondsControllerTest < ActionController::TestCase
  setup do
    @my_diamond = my_diamonds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_diamonds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_diamond" do
    assert_difference('MyDiamond.count') do
      post :create, my_diamond: { carat: @my_diamond.carat, price: @my_diamond.price, shape: @my_diamond.shape, template_id: @my_diamond.template_id }
    end

    assert_redirected_to my_diamond_path(assigns(:my_diamond))
  end

  test "should show my_diamond" do
    get :show, id: @my_diamond
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_diamond
    assert_response :success
  end

  test "should update my_diamond" do
    patch :update, id: @my_diamond, my_diamond: { carat: @my_diamond.carat, price: @my_diamond.price, shape: @my_diamond.shape, template_id: @my_diamond.template_id }
    assert_redirected_to my_diamond_path(assigns(:my_diamond))
  end

  test "should destroy my_diamond" do
    assert_difference('MyDiamond.count', -1) do
      delete :destroy, id: @my_diamond
    end

    assert_redirected_to my_diamonds_path
  end
end
