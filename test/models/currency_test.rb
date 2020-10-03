# == Schema Information
#
# Table name: currencies
#
#  id         :bigint           not null, primary key
#  name       :string
#  symbol     :string
#  iso_code   :string
#  user_id    :bigint
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CurrencyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
