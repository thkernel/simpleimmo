class Payment < ApplicationRecord
  belongs_to :property
  belongs_to :payment_reason
  belongs_to :payment_method
  belongs_to :user
end
