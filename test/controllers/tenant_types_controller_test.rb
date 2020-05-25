require 'test_helper'

class TenantTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant_type = tenant_types(:one)
  end

  test "should get index" do
    get tenant_types_url
    assert_response :success
  end

  test "should get new" do
    get new_tenant_type_url
    assert_response :success
  end

  test "should create tenant_type" do
    assert_difference('TenantType.count') do
      post tenant_types_url, params: { tenant_type: { description: @tenant_type.description, name: @tenant_type.name, status: @tenant_type.status, user_id: @tenant_type.user_id } }
    end

    assert_redirected_to tenant_type_url(TenantType.last)
  end

  test "should show tenant_type" do
    get tenant_type_url(@tenant_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenant_type_url(@tenant_type)
    assert_response :success
  end

  test "should update tenant_type" do
    patch tenant_type_url(@tenant_type), params: { tenant_type: { description: @tenant_type.description, name: @tenant_type.name, status: @tenant_type.status, user_id: @tenant_type.user_id } }
    assert_redirected_to tenant_type_url(@tenant_type)
  end

  test "should destroy tenant_type" do
    assert_difference('TenantType.count', -1) do
      delete tenant_type_url(@tenant_type)
    end

    assert_redirected_to tenant_types_url
  end
end
