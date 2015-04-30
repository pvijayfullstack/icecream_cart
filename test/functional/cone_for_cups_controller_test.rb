require 'test_helper'

class ConeForCupsControllerTest < ActionController::TestCase
  setup do
    @cone_for_cup = cone_for_cups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cone_for_cups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cone_for_cup" do
    assert_difference('ConeForCup.count') do
      post :create, cone_for_cup: { name: @cone_for_cup.name, price: @cone_for_cup.price }
    end

    assert_redirected_to cone_for_cup_path(assigns(:cone_for_cup))
  end

  test "should show cone_for_cup" do
    get :show, id: @cone_for_cup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cone_for_cup
    assert_response :success
  end

  test "should update cone_for_cup" do
    put :update, id: @cone_for_cup, cone_for_cup: { name: @cone_for_cup.name, price: @cone_for_cup.price }
    assert_redirected_to cone_for_cup_path(assigns(:cone_for_cup))
  end

  test "should destroy cone_for_cup" do
    assert_difference('ConeForCup.count', -1) do
      delete :destroy, id: @cone_for_cup
    end

    assert_redirected_to cone_for_cups_path
  end
end
