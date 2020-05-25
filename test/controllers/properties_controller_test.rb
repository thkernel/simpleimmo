require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { about: @property.about, address: @property.address, bath_room: @property.bath_room, building: @property.building, city_id: @property.city_id, description: @property.description, door: @property.door, landlord_id: @property.landlord_id, neighborhood: @property.neighborhood, pieces_number: @property.pieces_number, property_type_id: @property.property_type_id, reference: @property.reference, rent_excluding_tax: @property.rent_excluding_tax, room_number: @property.room_number, status: @property.status, street: @property.street, surface: @property.surface, user_id: @property.user_id, value: @property.value } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { about: @property.about, address: @property.address, bath_room: @property.bath_room, building: @property.building, city_id: @property.city_id, description: @property.description, door: @property.door, landlord_id: @property.landlord_id, neighborhood: @property.neighborhood, pieces_number: @property.pieces_number, property_type_id: @property.property_type_id, reference: @property.reference, rent_excluding_tax: @property.rent_excluding_tax, room_number: @property.room_number, status: @property.status, street: @property.street, surface: @property.surface, user_id: @property.user_id, value: @property.value } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
