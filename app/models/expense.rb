# == Schema Information
#
# Table name: expenses
#
#  id              :bigint           not null, primary key
#  property_id     :integer
#  lease_id        :bigint
#  expense_type    :string
#  beneficiary     :string
#  payment_method  :string
#  amount          :float
#  received_amount :float
#  tax_id          :integer
#  total_amount    :float
#  description     :text
#  status          :string
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Expense < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :property, optional: true
  belongs_to :user

  validates :expense_type, presence: true
end
