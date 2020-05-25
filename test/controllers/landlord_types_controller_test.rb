require 'test_helper'

class LandlordTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @landlord_type = landlord_types(:one)
  end

  test "should get index" do
    get landlord_types_url
    assert_response :success
  end

  test "should get new" do
    get new_landlord_type_url
    assert_response :success
  end

  test "should create landlord_type" do
    assert_difference('LandlordType.count') do
      post landlord_types_url, params: { landlord_type: { description: @landlord_type.description, name: @landlord_type.name, status: @landlord_type.status, user_id: @landlord_type.user_id } }
    end

    assert_redirected_to landlord_type_url(LandlordType.last)
  end

  test "should show landlord_type" do
    get landlord_type_url(@landlord_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_landlord_type_url(@landlord_type)
    assert_response :success
  end

  test "should update landlord_type" do
    patch landlord_type_url(@landlord_type), params: { landlord_type: { description: @landlord_type.description, name: @landlord_type.name, status: @landlord_type.status, user_id: @landlord_type.user_id } }
    assert_redirected_to landlord_type_url(@landlord_type)
  end

  test "should destroy landlord_type" do
    assert_difference('LandlordType.count', -1) do
      delete landlord_type_url(@landlord_type)
    end

    assert_redirected_to landlord_types_url
  end
end
