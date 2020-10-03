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

require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
