require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    fill_in "About", with: @property.about
    fill_in "Address", with: @property.address
    fill_in "Bath room", with: @property.bath_room
    fill_in "Building", with: @property.building
    fill_in "City", with: @property.city_id
    fill_in "Description", with: @property.description
    fill_in "Door", with: @property.door
    fill_in "Landlord", with: @property.landlord_id
    fill_in "Neighborhood", with: @property.neighborhood
    fill_in "Pieces number", with: @property.pieces_number
    fill_in "Property type", with: @property.property_type_id
    fill_in "Reference", with: @property.reference
    fill_in "Rent excluding tax", with: @property.rent_excluding_tax
    fill_in "Room number", with: @property.room_number
    fill_in "Status", with: @property.status
    fill_in "Street", with: @property.street
    fill_in "Surface", with: @property.surface
    fill_in "User", with: @property.user_id
    fill_in "Value", with: @property.value
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "About", with: @property.about
    fill_in "Address", with: @property.address
    fill_in "Bath room", with: @property.bath_room
    fill_in "Building", with: @property.building
    fill_in "City", with: @property.city_id
    fill_in "Description", with: @property.description
    fill_in "Door", with: @property.door
    fill_in "Landlord", with: @property.landlord_id
    fill_in "Neighborhood", with: @property.neighborhood
    fill_in "Pieces number", with: @property.pieces_number
    fill_in "Property type", with: @property.property_type_id
    fill_in "Reference", with: @property.reference
    fill_in "Rent excluding tax", with: @property.rent_excluding_tax
    fill_in "Room number", with: @property.room_number
    fill_in "Status", with: @property.status
    fill_in "Street", with: @property.street
    fill_in "Surface", with: @property.surface
    fill_in "User", with: @property.user_id
    fill_in "Value", with: @property.value
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end
