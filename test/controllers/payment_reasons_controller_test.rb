require 'test_helper'

class PaymentReasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_reason = payment_reasons(:one)
  end

  test "should get index" do
    get payment_reasons_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_reason_url
    assert_response :success
  end

  test "should create payment_reason" do
    assert_difference('PaymentReason.count') do
      post payment_reasons_url, params: { payment_reason: { description: @payment_reason.description, name: @payment_reason.name, status: @payment_reason.status, user_id: @payment_reason.user_id } }
    end

    assert_redirected_to payment_reason_url(PaymentReason.last)
  end

  test "should show payment_reason" do
    get payment_reason_url(@payment_reason)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_reason_url(@payment_reason)
    assert_response :success
  end

  test "should update payment_reason" do
    patch payment_reason_url(@payment_reason), params: { payment_reason: { description: @payment_reason.description, name: @payment_reason.name, status: @payment_reason.status, user_id: @payment_reason.user_id } }
    assert_redirected_to payment_reason_url(@payment_reason)
  end

  test "should destroy payment_reason" do
    assert_difference('PaymentReason.count', -1) do
      delete payment_reason_url(@payment_reason)
    end

    assert_redirected_to payment_reasons_url
  end
end
