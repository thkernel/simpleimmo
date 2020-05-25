require "application_system_test_case"

class LeasesTest < ApplicationSystemTestCase
  setup do
    @lease = leases(:one)
  end

  test "visiting the index" do
    visit leases_url
    assert_selector "h1", text: "Leases"
  end

  test "creating a Lease" do
    visit leases_url
    click_on "New Lease"

    fill_in "Avance", with: @lease.avance
    fill_in "Building", with: @lease.building_id
    fill_in "Duration", with: @lease.duration
    fill_in "Effective date", with: @lease.effective_date
    fill_in "End date", with: @lease.end_date
    fill_in "Guarantee amount", with: @lease.guarantee_amount
    fill_in "Id number", with: @lease.id_number
    fill_in "Id type", with: @lease.id_type
    fill_in "Net amount", with: @lease.net_amount
    fill_in "Notes", with: @lease.notes
    fill_in "Payment date", with: @lease.payment_date
    fill_in "Payment method", with: @lease.payment_method
    fill_in "Periodicity", with: @lease.periodicity
    fill_in "Property", with: @lease.property_id
    fill_in "Receipt date", with: @lease.receipt_date
    check "Renewable" if @lease.renewable
    fill_in "Rent excluding tax", with: @lease.rent_excluding_tax
    fill_in "Start date", with: @lease.start_date
    fill_in "Status", with: @lease.status
    fill_in "Tenant", with: @lease.tenant_id
    fill_in "Usage type", with: @lease.usage_type
    fill_in "User", with: @lease.user_id
    check "Vat paid by tenant" if @lease.vat_paid_by_tenant
    fill_in "Vat rate", with: @lease.vat_rate
    click_on "Create Lease"

    assert_text "Lease was successfully created"
    click_on "Back"
  end

  test "updating a Lease" do
    visit leases_url
    click_on "Edit", match: :first

    fill_in "Avance", with: @lease.avance
    fill_in "Building", with: @lease.building_id
    fill_in "Duration", with: @lease.duration
    fill_in "Effective date", with: @lease.effective_date
    fill_in "End date", with: @lease.end_date
    fill_in "Guarantee amount", with: @lease.guarantee_amount
    fill_in "Id number", with: @lease.id_number
    fill_in "Id type", with: @lease.id_type
    fill_in "Net amount", with: @lease.net_amount
    fill_in "Notes", with: @lease.notes
    fill_in "Payment date", with: @lease.payment_date
    fill_in "Payment method", with: @lease.payment_method
    fill_in "Periodicity", with: @lease.periodicity
    fill_in "Property", with: @lease.property_id
    fill_in "Receipt date", with: @lease.receipt_date
    check "Renewable" if @lease.renewable
    fill_in "Rent excluding tax", with: @lease.rent_excluding_tax
    fill_in "Start date", with: @lease.start_date
    fill_in "Status", with: @lease.status
    fill_in "Tenant", with: @lease.tenant_id
    fill_in "Usage type", with: @lease.usage_type
    fill_in "User", with: @lease.user_id
    check "Vat paid by tenant" if @lease.vat_paid_by_tenant
    fill_in "Vat rate", with: @lease.vat_rate
    click_on "Update Lease"

    assert_text "Lease was successfully updated"
    click_on "Back"
  end

  test "destroying a Lease" do
    visit leases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lease was successfully destroyed"
  end
end
