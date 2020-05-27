# == Schema Information
#
# Table name: properties
#
#  id                 :bigint           not null, primary key
#  building           :integer
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

class Property < ApplicationRecord
  belongs_to :landlord
  belongs_to :property_type
  belongs_to :city
  belongs_to :user
end
