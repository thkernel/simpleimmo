# == Schema Information
#
# Table name: landlords
#
#  id               :bigint           not null, primary key
#  landlord_type_id :bigint
#  civility         :string
#  last_name        :string
#  first_name       :string
#  birth_date       :datetime
#  birth_place      :string
#  id_type          :string
#  id_number        :string
#  id_expiration    :datetime
#  profession       :string
#  nationality      :string
#  company_name     :string
#  address          :string
#  phone            :string
#  city             :string
#  country          :string
#  email            :string
#  about            :text
#  user_id          :bigint
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Landlord < ApplicationRecord
  	belongs_to :landlord_type
  	belongs_to :user

  	has_many :buildings, dependent: :destroy
  	has_many :properties, dependent: :destroy

  	# Validations

	validates :id_number, presence: true, uniqueness: true, unless: :company?
	validates :nationality, presence: true,  unless: :company?
	validates :civility, presence: true,  unless: :company?
	validates :last_name, presence: true,  unless: :company?
	validates :first_name, presence: true,  unless: :company?
	validates :id_type, presence: true, unless: :company?
	validates :birth_date, presence: true, unless: :company?
	validates :birth_place, presence: true,  unless: :company?
	validates :company_name, presence: true, uniqueness: true, if: :company?
	validates :phone, presence: true
	validates :address, presence: true
	validates :city, presence: true
	validates :country, presence: true
	validates :profession, presence: true,  unless: :company?

	def full_name
		if self.landlord_type_id == LandlordType.find_by(name: "Société").id
			self.company_name
		else
    		"#{first_name} #{last_name}"
    	end
  	end
  

  private

  def company?
  	if self.landlord_type_id == LandlordType.find_by(name: "Société").id
  		true
  	else
  		false
  	end
  end

end
