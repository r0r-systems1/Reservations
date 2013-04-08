require 'test_helper'

class PaymentDetailsControllerTest < ActionController::TestCase
  setup do
    @payment_detail = payment_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_detail" do
    assert_difference('PaymentDetail.count') do
      post :create, payment_detail: { Donation: @payment_detail.Donation, Name_on_Card: @payment_detail.Name_on_Card, address: @payment_detail.address, card_number: @payment_detail.card_number, country: @payment_detail.country, email: @payment_detail.email, expiry_date: @payment_detail.expiry_date, pay_by: @payment_detail.pay_by, pcode: @payment_detail.pcode, state: @payment_detail.state, suburb: @payment_detail.suburb }
    end

    assert_redirected_to payment_detail_path(assigns(:payment_detail))
  end

  test "should show payment_detail" do
    get :show, id: @payment_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_detail
    assert_response :success
  end

  test "should update payment_detail" do
    put :update, id: @payment_detail, payment_detail: { Donation: @payment_detail.Donation, Name_on_Card: @payment_detail.Name_on_Card, address: @payment_detail.address, card_number: @payment_detail.card_number, country: @payment_detail.country, email: @payment_detail.email, expiry_date: @payment_detail.expiry_date, pay_by: @payment_detail.pay_by, pcode: @payment_detail.pcode, state: @payment_detail.state, suburb: @payment_detail.suburb }
    assert_redirected_to payment_detail_path(assigns(:payment_detail))
  end

  test "should destroy payment_detail" do
    assert_difference('PaymentDetail.count', -1) do
      delete :destroy, id: @payment_detail
    end

    assert_redirected_to payment_details_path
  end
end
