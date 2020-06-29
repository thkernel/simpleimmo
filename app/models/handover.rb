# == Schema Information
#
# Table name: handovers
#
#  id               :bigint           not null, primary key
#  handover_type    :string
#  reference        :string
#  property_id      :bigint
#  lease_id         :bigint
#  doors            :string
#  windows          :string
#  wall_cover       :string
#  flooring         :string
#  ventilators      :string
#  air_conditioners :string
#  light_bulbs      :string
#  faucets          :string
#  showers          :string
#  doorbell         :string
#  ceiling          :string
#  electricity      :string
#  notes            :text
#  user_id          :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Handover < ApplicationRecord
  belongs_to :lease
  belongs_to :user


  validates :lease_id, presence: true
  validates :handover_type, presence: true
  validates_with LeasePropertyValidator
  

end
