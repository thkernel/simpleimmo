require 'test_helper'

class ExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense = expenses(:one)
  end

  test "should get index" do
    get expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_url
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post expenses_url, params: { expense: { amount: @expense.amount, end_date: @expense.end_date, payer: @expense.payer, payment_method_id: @expense.payment_method_id, property_id: @expense.property_id, received_amount: @expense.received_amount, start_date: @expense.start_date, status: @expense.status, tax_id: @expense.tax_id, total_amount: @expense.total_amount, type: @expense.type, user_id: @expense.user_id } }
    end

    assert_redirected_to expense_url(Expense.last)
  end

  test "should show expense" do
    get expense_url(@expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_url(@expense)
    assert_response :success
  end

  test "should update expense" do
    patch expense_url(@expense), params: { expense: { amount: @expense.amount, end_date: @expense.end_date, payer: @expense.payer, payment_method_id: @expense.payment_method_id, property_id: @expense.property_id, received_amount: @expense.received_amount, start_date: @expense.start_date, status: @expense.status, tax_id: @expense.tax_id, total_amount: @expense.total_amount, type: @expense.type, user_id: @expense.user_id } }
    assert_redirected_to expense_url(@expense)
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete expense_url(@expense)
    end

    assert_redirected_to expenses_url
  end
end
