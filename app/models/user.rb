# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  uid                    :string
#  login                  :string
#  role_id                :bigint
#  service_id             :bigint
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable






    has_one :profile, dependent: :destroy
    belongs_to :role
    belongs_to :service
    has_many :tenant_types, dependent: :destroy
	has_many :tenants, dependent: :destroy
	has_many :property_types, dependent: :destroy
	has_many :properties, dependent: :destroy
	has_many :landlord_types, dependent: :destroy
	has_many :landlords, dependent: :destroy
	has_many :cities, dependent: :destroy
	has_many :buildings, dependent: :destroy
	has_many :mandates, dependent: :destroy
	has_many :leases, dependent: :destroy
	has_many :taxes, dependent: :destroy
	has_many :incomes, dependent: :destroy
	has_many :expenses, dependent: :destroy

    # Add nested attributes for profile.
	accepts_nested_attributes_for :profile
	
	# Validations

	validates :login, presence: true, uniqueness: true



	private 

	def generate_random_uid
		begin
			self.slug = "u#{SecureRandom.random_number(1_000_000_000)}"
		end while User.where(slug: self.slug).exists?
	end 

end
