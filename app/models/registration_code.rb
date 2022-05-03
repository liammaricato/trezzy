# == Schema Information
#
# Table name: registration_codes
#
#  id         :bigint           not null, primary key
#  code       :string
#  email      :string
#  first_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class RegistrationCode < ApplicationRecord
end
