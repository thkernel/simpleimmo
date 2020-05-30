# == Schema Information
#
# Table name: tenants
#
#  id             :bigint           not null, primary key
#  tenant_type_id :bigint
#  civility       :string
#  last_name      :string
#  first_name     :string
#  birth_date     :datetime
#  birth_place    :string
#  id_type        :string
#  id_number      :string
#  id_expiration  :string
#  profession     :string
#  nationality    :string
#  company_name   :string
#  address        :string
#  phone          :string
#  city           :string
#  country        :string
#  email          :string
#  about          :text
#  user_id        :bigint
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Tenant < ApplicationRecord
  belongs_to :tenant_type
  belongs_to :user

  # Validations

	validates :id_number, presence: true, uniqueness: true

def full_name
    "#{first_name} #{last_name}"
  end

end
