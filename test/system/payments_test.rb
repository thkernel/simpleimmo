require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "creating a Payment" do
    visit payments_url
    click_on "New Payment"

    fill_in "Amount", with: @payment.amount
    fill_in "End date", with: @payment.end_date
    fill_in "Payer", with: @payment.payer
    fill_in "Payment method", with: @payment.payment_method_id
    fill_in "Payment reason", with: @payment.payment_reason_id
    fill_in "Property", with: @payment.property_id
    fill_in "Received amount", with: @payment.received_amount
    fill_in "Start date", with: @payment.start_date
    fill_in "Status", with: @payment.status
    fill_in "Tax", with: @payment.tax_id
    fill_in "Total amount", with: @payment.total_amount
    fill_in "User", with: @payment.user_id
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "updating a Payment" do
    visit payments_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @payment.amount
    fill_in "End date", with: @payment.end_date
    fill_in "Payer", with: @payment.payer
    fill_in "Payment method", with: @payment.payment_method_id
    fill_in "Payment reason", with: @payment.payment_reason_id
    fill_in "Property", with: @payment.property_id
    fill_in "Received amount", with: @payment.received_amount
    fill_in "Start date", with: @payment.start_date
    fill_in "Status", with: @payment.status
    fill_in "Tax", with: @payment.tax_id
    fill_in "Total amount", with: @payment.total_amount
    fill_in "User", with: @payment.user_id
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment" do
    visit payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment was successfully destroyed"
  end
end
