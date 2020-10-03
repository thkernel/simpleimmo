# == Schema Information
#
# Table name: rent_payments
#
#  id         :bigint           not null, primary key
#  uid        :string
#  income_id  :bigint
#  lease_id   :bigint
#  month      :integer
#  year       :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RentPayment < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :lease
  belongs_to :income
end
