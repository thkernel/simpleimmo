require "application_system_test_case"

class HandoversTest < ApplicationSystemTestCase
  setup do
    @handover = handovers(:one)
  end

  test "visiting the index" do
    visit handovers_url
    assert_selector "h1", text: "Handovers"
  end

  test "creating a Handover" do
    visit handovers_url
    click_on "New Handover"

    fill_in "Air conditioners", with: @handover.air_conditioners
    fill_in "Ceiling", with: @handover.ceiling
    fill_in "Doorbell", with: @handover.doorbell
    fill_in "Doors", with: @handover.doors
    fill_in "Electricity", with: @handover.electricity
    fill_in "Faucets", with: @handover.faucets
    fill_in "Flooring", with: @handover.flooring
    fill_in "Lease", with: @handover.lease_id
    fill_in "Light bulbs", with: @handover.light_bulbs
    fill_in "Notes", with: @handover.notes
    fill_in "Reference", with: @handover.reference
    fill_in "Showers", with: @handover.showers
    fill_in "Type", with: @handover.type
    fill_in "User", with: @handover.user_id
    fill_in "Ventilators", with: @handover.ventilators
    fill_in "Wall cover", with: @handover.wall_cover
    fill_in "Windows", with: @handover.windows
    click_on "Create Handover"

    assert_text "Handover was successfully created"
    click_on "Back"
  end

  test "updating a Handover" do
    visit handovers_url
    click_on "Edit", match: :first

    fill_in "Air conditioners", with: @handover.air_conditioners
    fill_in "Ceiling", with: @handover.ceiling
    fill_in "Doorbell", with: @handover.doorbell
    fill_in "Doors", with: @handover.doors
    fill_in "Electricity", with: @handover.electricity
    fill_in "Faucets", with: @handover.faucets
    fill_in "Flooring", with: @handover.flooring
    fill_in "Lease", with: @handover.lease_id
    fill_in "Light bulbs", with: @handover.light_bulbs
    fill_in "Notes", with: @handover.notes
    fill_in "Reference", with: @handover.reference
    fill_in "Showers", with: @handover.showers
    fill_in "Type", with: @handover.type
    fill_in "User", with: @handover.user_id
    fill_in "Ventilators", with: @handover.ventilators
    fill_in "Wall cover", with: @handover.wall_cover
    fill_in "Windows", with: @handover.windows
    click_on "Update Handover"

    assert_text "Handover was successfully updated"
    click_on "Back"
  end

  test "destroying a Handover" do
    visit handovers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Handover was successfully destroyed"
  end
end
