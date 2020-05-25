require 'test_helper'

class MandatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mandate = mandates(:one)
  end

  test "should get index" do
    get mandates_url
    assert_response :success
  end

  test "should get new" do
    get new_mandate_url
    assert_response :success
  end

  test "should create mandate" do
    assert_difference('Mandate.count') do
      post mandates_url, params: { mandate: { building_id: @mandate.building_id, commission_amount: @mandate.commission_amount, commission_rate: @mandate.commission_rate, duration: @mandate.duration, end_date: @mandate.end_date, id_number: @mandate.id_number, id_type: @mandate.id_type, landlord_id: @mandate.landlord_id, net_amount: @mandate.net_amount, notes: @mandate.notes, periodicity: @mandate.periodicity, property_id: @mandate.property_id, property_value: @mandate.property_value, start_date: @mandate.start_date, status: @mandate.status, usage_type: @mandate.usage_type, user_id: @mandate.user_id, vat_rate: @mandate.vat_rate } }
    end

    assert_redirected_to mandate_url(Mandate.last)
  end

  test "should show mandate" do
    get mandate_url(@mandate)
    assert_response :success
  end

  test "should get edit" do
    get edit_mandate_url(@mandate)
    assert_response :success
  end

  test "should update mandate" do
    patch mandate_url(@mandate), params: { mandate: { building_id: @mandate.building_id, commission_amount: @mandate.commission_amount, commission_rate: @mandate.commission_rate, duration: @mandate.duration, end_date: @mandate.end_date, id_number: @mandate.id_number, id_type: @mandate.id_type, landlord_id: @mandate.landlord_id, net_amount: @mandate.net_amount, notes: @mandate.notes, periodicity: @mandate.periodicity, property_id: @mandate.property_id, property_value: @mandate.property_value, start_date: @mandate.start_date, status: @mandate.status, usage_type: @mandate.usage_type, user_id: @mandate.user_id, vat_rate: @mandate.vat_rate } }
    assert_redirected_to mandate_url(@mandate)
  end

  test "should destroy mandate" do
    assert_difference('Mandate.count', -1) do
      delete mandate_url(@mandate)
    end

    assert_redirected_to mandates_url
  end
end
