require "application_system_test_case"

class TenantsTest < ApplicationSystemTestCase
  setup do
    @tenant = tenants(:one)
  end

  test "visiting the index" do
    visit tenants_url
    assert_selector "h1", text: "Tenants"
  end

  test "creating a Tenant" do
    visit tenants_url
    click_on "New Tenant"

    fill_in "About", with: @tenant.about
    fill_in "Address", with: @tenant.address
    fill_in "Birth date", with: @tenant.birth_date
    fill_in "Birth place", with: @tenant.birth_place
    fill_in "City", with: @tenant.city
    fill_in "Civility", with: @tenant.civility
    fill_in "Company name", with: @tenant.company_name
    fill_in "Country", with: @tenant.country
    fill_in "Email", with: @tenant.email
    fill_in "First name", with: @tenant.first_name
    fill_in "Id expiration", with: @tenant.id_expiration
    fill_in "Id number", with: @tenant.id_number
    fill_in "Id type", with: @tenant.id_type
    fill_in "Last name", with: @tenant.last_name
    fill_in "Nationality", with: @tenant.nationality
    fill_in "Phone", with: @tenant.phone
    fill_in "Profession", with: @tenant.profession
    fill_in "Status", with: @tenant.status
    fill_in "Tenant type", with: @tenant.tenant_type_id
    fill_in "User", with: @tenant.user_id
    click_on "Create Tenant"

    assert_text "Tenant was successfully created"
    click_on "Back"
  end

  test "updating a Tenant" do
    visit tenants_url
    click_on "Edit", match: :first

    fill_in "About", with: @tenant.about
    fill_in "Address", with: @tenant.address
    fill_in "Birth date", with: @tenant.birth_date
    fill_in "Birth place", with: @tenant.birth_place
    fill_in "City", with: @tenant.city
    fill_in "Civility", with: @tenant.civility
    fill_in "Company name", with: @tenant.company_name
    fill_in "Country", with: @tenant.country
    fill_in "Email", with: @tenant.email
    fill_in "First name", with: @tenant.first_name
    fill_in "Id expiration", with: @tenant.id_expiration
    fill_in "Id number", with: @tenant.id_number
    fill_in "Id type", with: @tenant.id_type
    fill_in "Last name", with: @tenant.last_name
    fill_in "Nationality", with: @tenant.nationality
    fill_in "Phone", with: @tenant.phone
    fill_in "Profession", with: @tenant.profession
    fill_in "Status", with: @tenant.status
    fill_in "Tenant type", with: @tenant.tenant_type_id
    fill_in "User", with: @tenant.user_id
    click_on "Update Tenant"

    assert_text "Tenant was successfully updated"
    click_on "Back"
  end

  test "destroying a Tenant" do
    visit tenants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tenant was successfully destroyed"
  end
end
