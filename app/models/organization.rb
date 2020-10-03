# == Schema Information
#
# Table name: organizations
#
#  id         :bigint           not null, primary key
#  name       :string
#  activity   :string
#  address    :string
#  phone      :string
#  po_box     :string
#  city       :string
#  country    :string
#  email      :string
#  website    :string
#  about      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ApplicationRecord
    include SharedUtils::Generate

    before_save :generate_random_number_uid
end
