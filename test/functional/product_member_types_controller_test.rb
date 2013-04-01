require 'test_helper'

class ProductMemberTypesControllerTest < ActionController::TestCase
  setup do
    @product_member_type = product_member_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_member_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_member_type" do
    assert_difference('ProductMemberType.count') do
      post :create, product_member_type: { mtype_id: @product_member_type.mtype_id, prodtype_id: @product_member_type.prodtype_id }
    end

    assert_redirected_to product_member_type_path(assigns(:product_member_type))
  end

  test "should show product_member_type" do
    get :show, id: @product_member_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_member_type
    assert_response :success
  end

  test "should update product_member_type" do
    put :update, id: @product_member_type, product_member_type: { mtype_id: @product_member_type.mtype_id, prodtype_id: @product_member_type.prodtype_id }
    assert_redirected_to product_member_type_path(assigns(:product_member_type))
  end

  test "should destroy product_member_type" do
    assert_difference('ProductMemberType.count', -1) do
      delete :destroy, id: @product_member_type
    end

    assert_redirected_to product_member_types_path
  end
end
