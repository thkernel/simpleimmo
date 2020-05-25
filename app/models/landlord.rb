class Landlord < ApplicationRecord
  belongs_to :landlord_type
  belongs_to :user
end
