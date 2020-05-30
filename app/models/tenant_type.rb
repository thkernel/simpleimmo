# == Schema Information
#
# Table name: tenant_types
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TenantType < ApplicationRecord
  belongs_to :user

  # Validations

	validates :name, presence: true, uniqueness: true

end
