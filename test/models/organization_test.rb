# == Schema Information
#
# Table name: organizations
#
#  id         :bigint           not null, primary key
#  name       :string
#  activity   :string
#  address    :string
#  phone      :string
#  po_box     :string
#  city       :string
#  country    :string
#  email      :string
#  website    :string
#  about      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
