require "application_system_test_case"

class BuildingsTest < ApplicationSystemTestCase
  setup do
    @building = buildings(:one)
  end

  test "visiting the index" do
    visit buildings_url
    assert_selector "h1", text: "Buildings"
  end

  test "creating a Building" do
    visit buildings_url
    click_on "New Building"

    fill_in "About", with: @building.about
    fill_in "Address", with: @building.address
    fill_in "Apartment number", with: @building.apartment_number
    fill_in "City", with: @building.city_id
    fill_in "Landlord", with: @building.landlord_id
    fill_in "Neighborhood", with: @building.neighborhood
    fill_in "Reference", with: @building.reference
    fill_in "Status", with: @building.status
    fill_in "Surface", with: @building.surface
    fill_in "User", with: @building.user_id
    fill_in "Value", with: @building.value
    click_on "Create Building"

    assert_text "Building was successfully created"
    click_on "Back"
  end

  test "updating a Building" do
    visit buildings_url
    click_on "Edit", match: :first

    fill_in "About", with: @building.about
    fill_in "Address", with: @building.address
    fill_in "Apartment number", with: @building.apartment_number
    fill_in "City", with: @building.city_id
    fill_in "Landlord", with: @building.landlord_id
    fill_in "Neighborhood", with: @building.neighborhood
    fill_in "Reference", with: @building.reference
    fill_in "Status", with: @building.status
    fill_in "Surface", with: @building.surface
    fill_in "User", with: @building.user_id
    fill_in "Value", with: @building.value
    click_on "Update Building"

    assert_text "Building was successfully updated"
    click_on "Back"
  end

  test "destroying a Building" do
    visit buildings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Building was successfully destroyed"
  end
end
