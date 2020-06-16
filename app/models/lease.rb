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
  belongs_to :tenant
  belongs_to :user

  belongs_to :property
end
