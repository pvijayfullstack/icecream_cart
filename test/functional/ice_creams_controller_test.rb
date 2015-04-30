require 'test_helper'

class IceCreamsControllerTest < ActionController::TestCase
  setup do
    @ice_cream = ice_creams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ice_creams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ice_cream" do
    assert_difference('IceCream.count') do
      post :create, ice_cream: { cone_for_cup_id: @ice_cream.cone_for_cup_id, extras_id: @ice_cream.extras_id, flavor_id: @ice_cream.flavor_id, total_number: @ice_cream.total_number, user_id: @ice_cream.user_id }
    end

    assert_redirected_to ice_cream_path(assigns(:ice_cream))
  end

  test "should show ice_cream" do
    get :show, id: @ice_cream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ice_cream
    assert_response :success
  end

  test "should update ice_cream" do
    put :update, id: @ice_cream, ice_cream: { cone_for_cup_id: @ice_cream.cone_for_cup_id, extras_id: @ice_cream.extras_id, flavor_id: @ice_cream.flavor_id, total_number: @ice_cream.total_number, user_id: @ice_cream.user_id }
    assert_redirected_to ice_cream_path(assigns(:ice_cream))
  end

  test "should destroy ice_cream" do
    assert_difference('IceCream.count', -1) do
      delete :destroy, id: @ice_cream
    end

    assert_redirected_to ice_creams_path
  end
end
