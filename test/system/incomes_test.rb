require "application_system_test_case"

class IncomesTest < ApplicationSystemTestCase
  setup do
    @income = incomes(:one)
  end

  test "visiting the index" do
    visit incomes_url
    assert_selector "h1", text: "Incomes"
  end

  test "creating a Income" do
    visit incomes_url
    click_on "New Income"

    fill_in "Amount", with: @income.amount
    fill_in "End date", with: @income.end_date
    fill_in "Payer", with: @income.payer
    fill_in "Payment method", with: @income.payment_method_id
    fill_in "Property", with: @income.property_id
    fill_in "Received amount", with: @income.received_amount
    fill_in "Start date", with: @income.start_date
    fill_in "Status", with: @income.status
    fill_in "Tax", with: @income.tax_id
    fill_in "Total amount", with: @income.total_amount
    fill_in "Type", with: @income.type
    fill_in "User", with: @income.user_id
    click_on "Create Income"

    assert_text "Income was successfully created"
    click_on "Back"
  end

  test "updating a Income" do
    visit incomes_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @income.amount
    fill_in "End date", with: @income.end_date
    fill_in "Payer", with: @income.payer
    fill_in "Payment method", with: @income.payment_method_id
    fill_in "Property", with: @income.property_id
    fill_in "Received amount", with: @income.received_amount
    fill_in "Start date", with: @income.start_date
    fill_in "Status", with: @income.status
    fill_in "Tax", with: @income.tax_id
    fill_in "Total amount", with: @income.total_amount
    fill_in "Type", with: @income.type
    fill_in "User", with: @income.user_id
    click_on "Update Income"

    assert_text "Income was successfully updated"
    click_on "Back"
  end

  test "destroying a Income" do
    visit incomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income was successfully destroyed"
  end
end
