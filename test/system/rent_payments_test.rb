require "application_system_test_case"

class RentPaymentsTest < ApplicationSystemTestCase
  setup do
    @rent_payment = rent_payments(:one)
  end

  test "visiting the index" do
    visit rent_payments_url
    assert_selector "h1", text: "Rent Payments"
  end

  test "creating a Rent payment" do
    visit rent_payments_url
    click_on "New Rent Payment"

    fill_in "Income", with: @rent_payment.income
    fill_in "Lease", with: @rent_payment.lease_id
    fill_in "Month", with: @rent_payment.month
    fill_in "Status", with: @rent_payment.status
    fill_in "Uid", with: @rent_payment.uid
    fill_in "Year", with: @rent_payment.year
    click_on "Create Rent payment"

    assert_text "Rent payment was successfully created"
    click_on "Back"
  end

  test "updating a Rent payment" do
    visit rent_payments_url
    click_on "Edit", match: :first

    fill_in "Income", with: @rent_payment.income
    fill_in "Lease", with: @rent_payment.lease_id
    fill_in "Month", with: @rent_payment.month
    fill_in "Status", with: @rent_payment.status
    fill_in "Uid", with: @rent_payment.uid
    fill_in "Year", with: @rent_payment.year
    click_on "Update Rent payment"

    assert_text "Rent payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Rent payment" do
    visit rent_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rent payment was successfully destroyed"
  end
end
