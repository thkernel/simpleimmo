# == Schema Information
#
# Table name: landlord_types
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LandlordType < ApplicationRecord
  belongs_to :user
end
