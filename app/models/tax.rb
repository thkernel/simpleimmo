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

class Tax < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :user

  # Validations

	validates :name, presence: true, uniqueness: true

end
