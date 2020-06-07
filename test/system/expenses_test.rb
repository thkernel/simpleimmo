require "application_system_test_case"

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test "visiting the index" do
    visit expenses_url
    assert_selector "h1", text: "Expenses"
  end

  test "creating a Expense" do
    visit expenses_url
    click_on "New Expense"

    fill_in "Amount", with: @expense.amount
    fill_in "End date", with: @expense.end_date
    fill_in "Payer", with: @expense.payer
    fill_in "Payment method", with: @expense.payment_method_id
    fill_in "Property", with: @expense.property_id
    fill_in "Received amount", with: @expense.received_amount
    fill_in "Start date", with: @expense.start_date
    fill_in "Status", with: @expense.status
    fill_in "Tax", with: @expense.tax_id
    fill_in "Total amount", with: @expense.total_amount
    fill_in "Type", with: @expense.type
    fill_in "User", with: @expense.user_id
    click_on "Create Expense"

    assert_text "Expense was successfully created"
    click_on "Back"
  end

  test "updating a Expense" do
    visit expenses_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @expense.amount
    fill_in "End date", with: @expense.end_date
    fill_in "Payer", with: @expense.payer
    fill_in "Payment method", with: @expense.payment_method_id
    fill_in "Property", with: @expense.property_id
    fill_in "Received amount", with: @expense.received_amount
    fill_in "Start date", with: @expense.start_date
    fill_in "Status", with: @expense.status
    fill_in "Tax", with: @expense.tax_id
    fill_in "Total amount", with: @expense.total_amount
    fill_in "Type", with: @expense.type
    fill_in "User", with: @expense.user_id
    click_on "Update Expense"

    assert_text "Expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense" do
    visit expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense was successfully destroyed"
  end
end
