require 'test_helper'

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get payments_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_url
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post payments_url, params: { payment: { amount: @payment.amount, end_date: @payment.end_date, payer: @payment.payer, payment_method_id: @payment.payment_method_id, payment_reason_id: @payment.payment_reason_id, property_id: @payment.property_id, received_amount: @payment.received_amount, start_date: @payment.start_date, status: @payment.status, tax_id: @payment.tax_id, total_amount: @payment.total_amount, user_id: @payment.user_id } }
    end

    assert_redirected_to payment_url(Payment.last)
  end

  test "should show payment" do
    get payment_url(@payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_url(@payment)
    assert_response :success
  end

  test "should update payment" do
    patch payment_url(@payment), params: { payment: { amount: @payment.amount, end_date: @payment.end_date, payer: @payment.payer, payment_method_id: @payment.payment_method_id, payment_reason_id: @payment.payment_reason_id, property_id: @payment.property_id, received_amount: @payment.received_amount, start_date: @payment.start_date, status: @payment.status, tax_id: @payment.tax_id, total_amount: @payment.total_amount, user_id: @payment.user_id } }
    assert_redirected_to payment_url(@payment)
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete payment_url(@payment)
    end

    assert_redirected_to payments_url
  end
end
