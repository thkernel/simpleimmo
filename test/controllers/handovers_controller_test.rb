require 'test_helper'

class HandoversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handover = handovers(:one)
  end

  test "should get index" do
    get handovers_url
    assert_response :success
  end

  test "should get new" do
    get new_handover_url
    assert_response :success
  end

  test "should create handover" do
    assert_difference('Handover.count') do
      post handovers_url, params: { handover: { air_conditioners: @handover.air_conditioners, ceiling: @handover.ceiling, doorbell: @handover.doorbell, doors: @handover.doors, electricity: @handover.electricity, faucets: @handover.faucets, flooring: @handover.flooring, lease_id: @handover.lease_id, light_bulbs: @handover.light_bulbs, notes: @handover.notes, reference: @handover.reference, showers: @handover.showers, type: @handover.type, user_id: @handover.user_id, ventilators: @handover.ventilators, wall_cover: @handover.wall_cover, windows: @handover.windows } }
    end

    assert_redirected_to handover_url(Handover.last)
  end

  test "should show handover" do
    get handover_url(@handover)
    assert_response :success
  end

  test "should get edit" do
    get edit_handover_url(@handover)
    assert_response :success
  end

  test "should update handover" do
    patch handover_url(@handover), params: { handover: { air_conditioners: @handover.air_conditioners, ceiling: @handover.ceiling, doorbell: @handover.doorbell, doors: @handover.doors, electricity: @handover.electricity, faucets: @handover.faucets, flooring: @handover.flooring, lease_id: @handover.lease_id, light_bulbs: @handover.light_bulbs, notes: @handover.notes, reference: @handover.reference, showers: @handover.showers, type: @handover.type, user_id: @handover.user_id, ventilators: @handover.ventilators, wall_cover: @handover.wall_cover, windows: @handover.windows } }
    assert_redirected_to handover_url(@handover)
  end

  test "should destroy handover" do
    assert_difference('Handover.count', -1) do
      delete handover_url(@handover)
    end

    assert_redirected_to handovers_url
  end
end
