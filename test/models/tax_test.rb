# == Schema Information
#
# Table name: taxes
#
#  id          :bigint           not null, primary key
#  name        :string
#  rate        :float
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TaxTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
