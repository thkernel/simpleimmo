# == Schema Information
#
# Table name: properties
#
#  id                 :bigint           not null, primary key
#  building_id        :bigint
#  landlord_id        :bigint
#  property_type_id   :bigint
#  reference          :string
#  description        :string
#  pieces_number      :integer
#  room_number        :integer
#  bath_room          :string
#  rent_excluding_tax :float
#  address            :string
#  city_id            :bigint
#  neighborhood       :string
#  street             :string
#  door               :string
#  surface            :float
#  value              :float
#  about              :text
#  status             :string
#  user_id            :bigint
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
