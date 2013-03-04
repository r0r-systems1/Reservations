require 'test_helper'

class EasTypesControllerTest < ActionController::TestCase
  setup do
    @eas_type = eas_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eas_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eas_type" do
    assert_difference('EasType.count') do
      post :create, eas_type: { early: @eas_type.early, name: @eas_type.name, normal: @eas_type.normal }
    end

    assert_redirected_to eas_type_path(assigns(:eas_type))
  end

  test "should show eas_type" do
    get :show, id: @eas_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eas_type
    assert_response :success
  end

  test "should update eas_type" do
    put :update, id: @eas_type, eas_type: { early: @eas_type.early, name: @eas_type.name, normal: @eas_type.normal }
    assert_redirected_to eas_type_path(assigns(:eas_type))
  end

  test "should destroy eas_type" do
    assert_difference('EasType.count', -1) do
      delete :destroy, id: @eas_type
    end

    assert_redirected_to eas_types_path
  end
end
