require 'test_helper'

class ShipingsControllerTest < ActionController::TestCase
  setup do
    @shiping = shipings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shiping" do
    assert_difference('Shiping.count') do
      post :create, shiping: { description: @shiping.description, dizhi: @shiping.dizhi, title: @shiping.title, user_id: @shiping.user_id }
    end

    assert_redirected_to shiping_path(assigns(:shiping))
  end

  test "should show shiping" do
    get :show, id: @shiping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shiping
    assert_response :success
  end

  test "should update shiping" do
    patch :update, id: @shiping, shiping: { description: @shiping.description, dizhi: @shiping.dizhi, title: @shiping.title, user_id: @shiping.user_id }
    assert_redirected_to shiping_path(assigns(:shiping))
  end

  test "should destroy shiping" do
    assert_difference('Shiping.count', -1) do
      delete :destroy, id: @shiping
    end

    assert_redirected_to shipings_path
  end
end
