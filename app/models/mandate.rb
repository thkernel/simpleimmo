class Mandate < ApplicationRecord
  belongs_to :landlord
  belongs_to :user
end
