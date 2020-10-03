# == Schema Information
#
# Table name: leases
#
#  id                 :bigint           not null, primary key
#  tenant_id          :bigint
#  building_id        :integer
#  property_id        :integer
#  usage_type         :string
#  start_date         :datetime
#  end_date           :datetime
#  effective_date     :datetime
#  duration           :string
#  id_type            :string
#  id_number          :string
#  periodicity        :string
#  payment_method     :string
#  payment_date       :integer
#  receipt_date       :integer
#  rent_excluding_tax :float
#  vat_rate           :float
#  net_amount         :float
#  vat_paid_by_tenant :boolean
#  guarantee_amount   :float
#  avance             :float
#  renewable          :boolean
#  status             :string
#  notes              :text
#  user_id            :bigint
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Lease < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  before_save :set_status

  belongs_to :tenant
  belongs_to :user
  belongs_to :property
  belongs_to :building, optional: true

  validates_with PropertyValidator

  def property_enable_lease
    Lease.where("status = ? AND property_id = ?", "enable", self.property.id).first
  end

  
  private

	def set_status
		unless self.status.present?
			self.status = "enable"
		end
	end
end
