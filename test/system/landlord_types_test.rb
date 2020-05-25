require "application_system_test_case"

class LandlordTypesTest < ApplicationSystemTestCase
  setup do
    @landlord_type = landlord_types(:one)
  end

  test "visiting the index" do
    visit landlord_types_url
    assert_selector "h1", text: "Landlord Types"
  end

  test "creating a Landlord type" do
    visit landlord_types_url
    click_on "New Landlord Type"

    fill_in "Description", with: @landlord_type.description
    fill_in "Name", with: @landlord_type.name
    fill_in "Status", with: @landlord_type.status
    fill_in "User", with: @landlord_type.user_id
    click_on "Create Landlord type"

    assert_text "Landlord type was successfully created"
    click_on "Back"
  end

  test "updating a Landlord type" do
    visit landlord_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @landlord_type.description
    fill_in "Name", with: @landlord_type.name
    fill_in "Status", with: @landlord_type.status
    fill_in "User", with: @landlord_type.user_id
    click_on "Update Landlord type"

    assert_text "Landlord type was successfully updated"
    click_on "Back"
  end

  test "destroying a Landlord type" do
    visit landlord_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Landlord type was successfully destroyed"
  end
end
