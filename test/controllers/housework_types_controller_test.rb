require 'test_helper'

class HouseworkTypesControllerTest < ActionController::TestCase
  setup do
    @housework_type = housework_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:housework_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create housework_type" do
    assert_difference('HouseworkType.count') do
      post :create, housework_type: { name: @housework_type.name }
    end

    assert_redirected_to housework_type_path(assigns(:housework_type))
  end

  test "should show housework_type" do
    get :show, id: @housework_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @housework_type
    assert_response :success
  end

  test "should update housework_type" do
    patch :update, id: @housework_type, housework_type: { name: @housework_type.name }
    assert_redirected_to housework_type_path(assigns(:housework_type))
  end

  test "should destroy housework_type" do
    assert_difference('HouseworkType.count', -1) do
      delete :destroy, id: @housework_type
    end

    assert_redirected_to housework_types_path
  end
end
