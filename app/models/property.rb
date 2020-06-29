# == Schema Information
#
# Table name: properties
#
#  id                 :bigint           not null, primary key
#  building_id        :integer
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

  before_save :set_status

  belongs_to :landlord
  belongs_to :property_type
  belongs_to :city
  belongs_to :user

  has_many :handovers, dependent: :destroy

  has_one :lease, dependent: :destroy


  # Validations

	#validates :reference, presence: true, uniqueness: true
	validates_uniqueness_of :reference, presence: true, :scope => :building_id
	#validates :reference, presence: true, uniqueness: {scope: :building_id}, if: :buildind_id?

	scope :available, -> {where(status: "available")}
	scope :unavailable, -> {where(status: "unavailable")}




	def full_reference
		
		if building_id.present?
			"#{reference} | #{Building.find(building_id).reference}"
		else
			"#{reference}"
		end
	end
	
	private

	def set_status
		unless self.status.present?
			self.status = "available"
		end
	end



end
