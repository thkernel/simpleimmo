# == Schema Information
#
# Table name: rent_payments
#
#  id         :bigint           not null, primary key
#  uid        :string
#  income_id  :bigint
#  lease_id   :bigint
#  month      :integer
#  year       :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RentPaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
