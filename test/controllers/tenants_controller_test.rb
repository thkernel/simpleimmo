require 'test_helper'

class TenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant = tenants(:one)
  end

  test "should get index" do
    get tenants_url
    assert_response :success
  end

  test "should get new" do
    get new_tenant_url
    assert_response :success
  end

  test "should create tenant" do
    assert_difference('Tenant.count') do
      post tenants_url, params: { tenant: { about: @tenant.about, address: @tenant.address, birth_date: @tenant.birth_date, birth_place: @tenant.birth_place, city: @tenant.city, civility: @tenant.civility, company_name: @tenant.company_name, country: @tenant.country, email: @tenant.email, first_name: @tenant.first_name, id_expiration: @tenant.id_expiration, id_number: @tenant.id_number, id_type: @tenant.id_type, last_name: @tenant.last_name, nationality: @tenant.nationality, phone: @tenant.phone, profession: @tenant.profession, status: @tenant.status, tenant_type_id: @tenant.tenant_type_id, user_id: @tenant.user_id } }
    end

    assert_redirected_to tenant_url(Tenant.last)
  end

  test "should show tenant" do
    get tenant_url(@tenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenant_url(@tenant)
    assert_response :success
  end

  test "should update tenant" do
    patch tenant_url(@tenant), params: { tenant: { about: @tenant.about, address: @tenant.address, birth_date: @tenant.birth_date, birth_place: @tenant.birth_place, city: @tenant.city, civility: @tenant.civility, company_name: @tenant.company_name, country: @tenant.country, email: @tenant.email, first_name: @tenant.first_name, id_expiration: @tenant.id_expiration, id_number: @tenant.id_number, id_type: @tenant.id_type, last_name: @tenant.last_name, nationality: @tenant.nationality, phone: @tenant.phone, profession: @tenant.profession, status: @tenant.status, tenant_type_id: @tenant.tenant_type_id, user_id: @tenant.user_id } }
    assert_redirected_to tenant_url(@tenant)
  end

  test "should destroy tenant" do
    assert_difference('Tenant.count', -1) do
      delete tenant_url(@tenant)
    end

    assert_redirected_to tenants_url
  end
end
