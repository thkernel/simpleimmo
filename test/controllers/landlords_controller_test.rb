require 'test_helper'

class LandlordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @landlord = landlords(:one)
  end

  test "should get index" do
    get landlords_url
    assert_response :success
  end

  test "should get new" do
    get new_landlord_url
    assert_response :success
  end

  test "should create landlord" do
    assert_difference('Landlord.count') do
      post landlords_url, params: { landlord: { about: @landlord.about, address: @landlord.address, birth_date: @landlord.birth_date, birth_place: @landlord.birth_place, city: @landlord.city, civility: @landlord.civility, company_name: @landlord.company_name, country: @landlord.country, email: @landlord.email, first_name: @landlord.first_name, id_expiration: @landlord.id_expiration, id_number: @landlord.id_number, id_type: @landlord.id_type, landlord_type_id: @landlord.landlord_type_id, last_name: @landlord.last_name, nationality: @landlord.nationality, phone: @landlord.phone, profession: @landlord.profession, status: @landlord.status, user_id: @landlord.user_id } }
    end

    assert_redirected_to landlord_url(Landlord.last)
  end

  test "should show landlord" do
    get landlord_url(@landlord)
    assert_response :success
  end

  test "should get edit" do
    get edit_landlord_url(@landlord)
    assert_response :success
  end

  test "should update landlord" do
    patch landlord_url(@landlord), params: { landlord: { about: @landlord.about, address: @landlord.address, birth_date: @landlord.birth_date, birth_place: @landlord.birth_place, city: @landlord.city, civility: @landlord.civility, company_name: @landlord.company_name, country: @landlord.country, email: @landlord.email, first_name: @landlord.first_name, id_expiration: @landlord.id_expiration, id_number: @landlord.id_number, id_type: @landlord.id_type, landlord_type_id: @landlord.landlord_type_id, last_name: @landlord.last_name, nationality: @landlord.nationality, phone: @landlord.phone, profession: @landlord.profession, status: @landlord.status, user_id: @landlord.user_id } }
    assert_redirected_to landlord_url(@landlord)
  end

  test "should destroy landlord" do
    assert_difference('Landlord.count', -1) do
      delete landlord_url(@landlord)
    end

    assert_redirected_to landlords_url
  end
end
