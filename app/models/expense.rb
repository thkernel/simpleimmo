# == Schema Information
#
# Table name: expenses
#
#  id             :bigint           not null, primary key
#  property_id    :bigint
#  lease_id       :bigint
#  type           :string
#  beneficiary    :string
#  payment_method :string
#  amount         :float
#  tax_id         :integer
#  total_amount   :float
#  description    :text
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Expense < ApplicationRecord
  belongs_to :property
  belongs_to :payment_method
  belongs_to :user
end
