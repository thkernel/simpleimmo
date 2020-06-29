# == Schema Information
#
# Table name: incomes
#
#  id              :bigint           not null, primary key
#  property_id     :bigint
#  lease_id        :bigint
#  income_type     :string
#  payer           :string
#  start_date      :datetime
#  end_date        :datetime
#  payment_method  :string
#  amount          :float
#  received_amount :float
#  tax_id          :integer
#  total_amount    :float
#  receipt_number  :string
#  month           :integer
#  year            :integer
#  status          :string
#  description     :text
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Income < ApplicationRecord
  belongs_to :lease
  belongs_to :user


  validates :start_date, presence: true, if: :rent_payment?
  validates :end_date, presence: true, if: :rent_payment?

  validates_with RentDatesValidator


  private

  def rent_payment?
  	if self.income_type == "Loyer"
  		true
  	else
  		false
  	end
  end



end
