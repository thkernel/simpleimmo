# == Schema Information
#
# Table name: permissions
#
#  id         :bigint           not null, primary key
#  uid        :string
#  role_id    :bigint
#  feature_id :bigint
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Permission < ApplicationRecord
    include SharedUtils::Generate

    before_save :generate_random_number_uid

end
