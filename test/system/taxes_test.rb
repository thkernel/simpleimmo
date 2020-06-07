require "application_system_test_case"

class TaxesTest < ApplicationSystemTestCase
  setup do
    @tax = taxes(:one)
  end

  test "visiting the index" do
    visit taxes_url
    assert_selector "h1", text: "Taxes"
  end

  test "creating a Tax" do
    visit taxes_url
    click_on "New Tax"

    fill_in "Description", with: @tax.description
    fill_in "Name", with: @tax.name
    fill_in "Rate", with: @tax.rate
    fill_in "Status", with: @tax.status
    fill_in "User", with: @tax.user_id
    click_on "Create Tax"

    assert_text "Tax was successfully created"
    click_on "Back"
  end

  test "updating a Tax" do
    visit taxes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tax.description
    fill_in "Name", with: @tax.name
    fill_in "Rate", with: @tax.rate
    fill_in "Status", with: @tax.status
    fill_in "User", with: @tax.user_id
    click_on "Update Tax"

    assert_text "Tax was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax" do
    visit taxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax was successfully destroyed"
  end
end
