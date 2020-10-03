# == Schema Information
#
# Table name: buildings
#
#  id               :bigint           not null, primary key
#  landlord_id      :bigint
#  reference        :string
#  apartment_number :integer
#  address          :string
#  city_id          :bigint
#  neighborhood     :string
#  surface          :float
#  value            :float
#  about            :text
#  status           :string
#  user_id          :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Building < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :landlord
  belongs_to :city
  belongs_to :user


  # Validations

  validates :reference, presence: true, uniqueness: true


end
