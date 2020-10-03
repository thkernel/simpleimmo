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

class Currency < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :user
end
