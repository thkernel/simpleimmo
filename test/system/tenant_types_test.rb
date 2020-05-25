require "application_system_test_case"

class TenantTypesTest < ApplicationSystemTestCase
  setup do
    @tenant_type = tenant_types(:one)
  end

  test "visiting the index" do
    visit tenant_types_url
    assert_selector "h1", text: "Tenant Types"
  end

  test "creating a Tenant type" do
    visit tenant_types_url
    click_on "New Tenant Type"

    fill_in "Description", with: @tenant_type.description
    fill_in "Name", with: @tenant_type.name
    fill_in "Status", with: @tenant_type.status
    fill_in "User", with: @tenant_type.user_id
    click_on "Create Tenant type"

    assert_text "Tenant type was successfully created"
    click_on "Back"
  end

  test "updating a Tenant type" do
    visit tenant_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tenant_type.description
    fill_in "Name", with: @tenant_type.name
    fill_in "Status", with: @tenant_type.status
    fill_in "User", with: @tenant_type.user_id
    click_on "Update Tenant type"

    assert_text "Tenant type was successfully updated"
    click_on "Back"
  end

  test "destroying a Tenant type" do
    visit tenant_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tenant type was successfully destroyed"
  end
end
