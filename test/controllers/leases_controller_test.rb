require 'test_helper'

class LeasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lease = leases(:one)
  end

  test "should get index" do
    get leases_url
    assert_response :success
  end

  test "should get new" do
    get new_lease_url
    assert_response :success
  end

  test "should create lease" do
    assert_difference('Lease.count') do
      post leases_url, params: { lease: { avance: @lease.avance, building_id: @lease.building_id, duration: @lease.duration, effective_date: @lease.effective_date, end_date: @lease.end_date, guarantee_amount: @lease.guarantee_amount, id_number: @lease.id_number, id_type: @lease.id_type, net_amount: @lease.net_amount, notes: @lease.notes, payment_date: @lease.payment_date, payment_method: @lease.payment_method, periodicity: @lease.periodicity, property_id: @lease.property_id, receipt_date: @lease.receipt_date, renewable: @lease.renewable, rent_excluding_tax: @lease.rent_excluding_tax, start_date: @lease.start_date, status: @lease.status, tenant_id: @lease.tenant_id, usage_type: @lease.usage_type, user_id: @lease.user_id, vat_paid_by_tenant: @lease.vat_paid_by_tenant, vat_rate: @lease.vat_rate } }
    end

    assert_redirected_to lease_url(Lease.last)
  end

  test "should show lease" do
    get lease_url(@lease)
    assert_response :success
  end

  test "should get edit" do
    get edit_lease_url(@lease)
    assert_response :success
  end

  test "should update lease" do
    patch lease_url(@lease), params: { lease: { avance: @lease.avance, building_id: @lease.building_id, duration: @lease.duration, effective_date: @lease.effective_date, end_date: @lease.end_date, guarantee_amount: @lease.guarantee_amount, id_number: @lease.id_number, id_type: @lease.id_type, net_amount: @lease.net_amount, notes: @lease.notes, payment_date: @lease.payment_date, payment_method: @lease.payment_method, periodicity: @lease.periodicity, property_id: @lease.property_id, receipt_date: @lease.receipt_date, renewable: @lease.renewable, rent_excluding_tax: @lease.rent_excluding_tax, start_date: @lease.start_date, status: @lease.status, tenant_id: @lease.tenant_id, usage_type: @lease.usage_type, user_id: @lease.user_id, vat_paid_by_tenant: @lease.vat_paid_by_tenant, vat_rate: @lease.vat_rate } }
    assert_redirected_to lease_url(@lease)
  end

  test "should destroy lease" do
    assert_difference('Lease.count', -1) do
      delete lease_url(@lease)
    end

    assert_redirected_to leases_url
  end
end
