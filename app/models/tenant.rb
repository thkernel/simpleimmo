class Tenant < ApplicationRecord
  belongs_to :tenant_type
  belongs_to :user
end
