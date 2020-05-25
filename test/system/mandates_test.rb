require "application_system_test_case"

class MandatesTest < ApplicationSystemTestCase
  setup do
    @mandate = mandates(:one)
  end

  test "visiting the index" do
    visit mandates_url
    assert_selector "h1", text: "Mandates"
  end

  test "creating a Mandate" do
    visit mandates_url
    click_on "New Mandate"

    fill_in "Building", with: @mandate.building_id
    fill_in "Commission amount", with: @mandate.commission_amount
    fill_in "Commission rate", with: @mandate.commission_rate
    fill_in "Duration", with: @mandate.duration
    fill_in "End date", with: @mandate.end_date
    fill_in "Id number", with: @mandate.id_number
    fill_in "Id type", with: @mandate.id_type
    fill_in "Landlord", with: @mandate.landlord_id
    fill_in "Net amount", with: @mandate.net_amount
    fill_in "Notes", with: @mandate.notes
    fill_in "Periodicity", with: @mandate.periodicity
    fill_in "Property", with: @mandate.property_id
    fill_in "Property value", with: @mandate.property_value
    fill_in "Start date", with: @mandate.start_date
    fill_in "Status", with: @mandate.status
    fill_in "Usage type", with: @mandate.usage_type
    fill_in "User", with: @mandate.user_id
    fill_in "Vat rate", with: @mandate.vat_rate
    click_on "Create Mandate"

    assert_text "Mandate was successfully created"
    click_on "Back"
  end

  test "updating a Mandate" do
    visit mandates_url
    click_on "Edit", match: :first

    fill_in "Building", with: @mandate.building_id
    fill_in "Commission amount", with: @mandate.commission_amount
    fill_in "Commission rate", with: @mandate.commission_rate
    fill_in "Duration", with: @mandate.duration
    fill_in "End date", with: @mandate.end_date
    fill_in "Id number", with: @mandate.id_number
    fill_in "Id type", with: @mandate.id_type
    fill_in "Landlord", with: @mandate.landlord_id
    fill_in "Net amount", with: @mandate.net_amount
    fill_in "Notes", with: @mandate.notes
    fill_in "Periodicity", with: @mandate.periodicity
    fill_in "Property", with: @mandate.property_id
    fill_in "Property value", with: @mandate.property_value
    fill_in "Start date", with: @mandate.start_date
    fill_in "Status", with: @mandate.status
    fill_in "Usage type", with: @mandate.usage_type
    fill_in "User", with: @mandate.user_id
    fill_in "Vat rate", with: @mandate.vat_rate
    click_on "Update Mandate"

    assert_text "Mandate was successfully updated"
    click_on "Back"
  end

  test "destroying a Mandate" do
    visit mandates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mandate was successfully destroyed"
  end
end
