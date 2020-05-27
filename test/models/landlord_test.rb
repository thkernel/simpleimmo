# == Schema Information
#
# Table name: landlords
#
#  id               :bigint           not null, primary key
#  landlord_type_id :bigint
#  civility         :string
#  last_name        :string
#  first_name       :string
#  birth_date       :datetime
#  birth_place      :string
#  id_type          :string
#  id_number        :string
#  id_expiration    :string
#  profession       :string
#  nationality      :string
#  company_name     :string
#  address          :string
#  phone            :string
#  city             :string
#  country          :string
#  email            :string
#  about            :text
#  user_id          :bigint
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class LandlordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
