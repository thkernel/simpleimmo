# == Schema Information
#
# Table name: roles
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Role < ApplicationRecord
    include SharedUtils::Generate

    before_save :generate_random_number_uid
    
    has_many :users, dependent: :destroy
end
