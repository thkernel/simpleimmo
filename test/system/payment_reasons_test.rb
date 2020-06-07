require "application_system_test_case"

class PaymentReasonsTest < ApplicationSystemTestCase
  setup do
    @payment_reason = payment_reasons(:one)
  end

  test "visiting the index" do
    visit payment_reasons_url
    assert_selector "h1", text: "Payment Reasons"
  end

  test "creating a Payment reason" do
    visit payment_reasons_url
    click_on "New Payment Reason"

    fill_in "Description", with: @payment_reason.description
    fill_in "Name", with: @payment_reason.name
    fill_in "Status", with: @payment_reason.status
    fill_in "User", with: @payment_reason.user_id
    click_on "Create Payment reason"

    assert_text "Payment reason was successfully created"
    click_on "Back"
  end

  test "updating a Payment reason" do
    visit payment_reasons_url
    click_on "Edit", match: :first

    fill_in "Description", with: @payment_reason.description
    fill_in "Name", with: @payment_reason.name
    fill_in "Status", with: @payment_reason.status
    fill_in "User", with: @payment_reason.user_id
    click_on "Update Payment reason"

    assert_text "Payment reason was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment reason" do
    visit payment_reasons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment reason was successfully destroyed"
  end
end
