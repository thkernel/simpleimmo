# == Schema Information
#
# Table name: mandates
#
#  id                  :bigint           not null, primary key
#  landlord_id         :integer
#  building_id         :integer
#  property_id         :integer
#  usage_type          :string
#  start_date          :datetime
#  end_date            :datetime
#  duration            :string
#  id_type             :string
#  id_number           :string
#  periodicity         :string
#  property_value      :float
#  commission_rate     :float
#  commission_amount   :float
#  property_tax_rate   :float
#  property_tax_amount :float
#  net_amount          :float
#  status              :string
#  notes               :text
#  user_id             :bigint
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class MandateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
