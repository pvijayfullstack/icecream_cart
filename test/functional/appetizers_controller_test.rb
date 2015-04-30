require 'test_helper'

class AppetizersControllerTest < ActionController::TestCase
  setup do
    @appetizer = appetizers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appetizers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appetizer" do
    assert_difference('Appetizer.count') do
      post :create, appetizer: { cook_time: @appetizer.cook_time, description: @appetizer.description, image_link: @appetizer.image_link, makes: @appetizer.makes, prep_time: @appetizer.prep_time, ready_in: @appetizer.ready_in, title: @appetizer.title }
    end

    assert_redirected_to appetizer_path(assigns(:appetizer))
  end

  test "should show appetizer" do
    get :show, id: @appetizer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appetizer
    assert_response :success
  end

  test "should update appetizer" do
    put :update, id: @appetizer, appetizer: { cook_time: @appetizer.cook_time, description: @appetizer.description, image_link: @appetizer.image_link, makes: @appetizer.makes, prep_time: @appetizer.prep_time, ready_in: @appetizer.ready_in, title: @appetizer.title }
    assert_redirected_to appetizer_path(assigns(:appetizer))
  end

  test "should destroy appetizer" do
    assert_difference('Appetizer.count', -1) do
      delete :destroy, id: @appetizer
    end

    assert_redirected_to appetizers_path
  end
end
