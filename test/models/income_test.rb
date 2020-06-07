# == Schema Information
#
# Table name: incomes
#
#  id              :bigint           not null, primary key
#  property_id     :bigint
#  lease_id        :bigint
#  type            :string
#  payer           :string
#  start_date      :datetime
#  end_date        :datetime
#  payment_method  :string
#  amount          :float
#  received_amount :float
#  tax_id          :integer
#  total_amount    :float
#  receipt_number  :string
#  status          :string
#  description     :text
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class IncomeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
