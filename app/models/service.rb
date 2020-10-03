# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  name        :string
#  parent      :integer
#  description :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ApplicationRecord
	include SharedUtils::Generate

	before_save :generate_random_number_uid
	has_many :users, dependent: :destroy
end
