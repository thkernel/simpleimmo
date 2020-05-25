require "application_system_test_case"

class LandlordsTest < ApplicationSystemTestCase
  setup do
    @landlord = landlords(:one)
  end

  test "visiting the index" do
    visit landlords_url
    assert_selector "h1", text: "Landlords"
  end

  test "creating a Landlord" do
    visit landlords_url
    click_on "New Landlord"

    fill_in "About", with: @landlord.about
    fill_in "Address", with: @landlord.address
    fill_in "Birth date", with: @landlord.birth_date
    fill_in "Birth place", with: @landlord.birth_place
    fill_in "City", with: @landlord.city
    fill_in "Civility", with: @landlord.civility
    fill_in "Company name", with: @landlord.company_name
    fill_in "Country", with: @landlord.country
    fill_in "Email", with: @landlord.email
    fill_in "First name", with: @landlord.first_name
    fill_in "Id expiration", with: @landlord.id_expiration
    fill_in "Id number", with: @landlord.id_number
    fill_in "Id type", with: @landlord.id_type
    fill_in "Landlord type", with: @landlord.landlord_type_id
    fill_in "Last name", with: @landlord.last_name
    fill_in "Nationality", with: @landlord.nationality
    fill_in "Phone", with: @landlord.phone
    fill_in "Profession", with: @landlord.profession
    fill_in "Status", with: @landlord.status
    fill_in "User", with: @landlord.user_id
    click_on "Create Landlord"

    assert_text "Landlord was successfully created"
    click_on "Back"
  end

  test "updating a Landlord" do
    visit landlords_url
    click_on "Edit", match: :first

    fill_in "About", with: @landlord.about
    fill_in "Address", with: @landlord.address
    fill_in "Birth date", with: @landlord.birth_date
    fill_in "Birth place", with: @landlord.birth_place
    fill_in "City", with: @landlord.city
    fill_in "Civility", with: @landlord.civility
    fill_in "Company name", with: @landlord.company_name
    fill_in "Country", with: @landlord.country
    fill_in "Email", with: @landlord.email
    fill_in "First name", with: @landlord.first_name
    fill_in "Id expiration", with: @landlord.id_expiration
    fill_in "Id number", with: @landlord.id_number
    fill_in "Id type", with: @landlord.id_type
    fill_in "Landlord type", with: @landlord.landlord_type_id
    fill_in "Last name", with: @landlord.last_name
    fill_in "Nationality", with: @landlord.nationality
    fill_in "Phone", with: @landlord.phone
    fill_in "Profession", with: @landlord.profession
    fill_in "Status", with: @landlord.status
    fill_in "User", with: @landlord.user_id
    click_on "Update Landlord"

    assert_text "Landlord was successfully updated"
    click_on "Back"
  end

  test "destroying a Landlord" do
    visit landlords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Landlord was successfully destroyed"
  end
end
