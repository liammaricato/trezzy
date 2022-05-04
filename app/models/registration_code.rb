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
#  user_id    :bigint           not null
#
# Indexes
#
#  index_registration_codes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class RegistrationCode < ApplicationRecord
  belongs_to :user

  before_create :generate_code
  after_create :send_registration_email

  def generate_code
    self.code = SecureRandom.hex
  end

  def send_registration_email
    RegistrationMailer.with(registration_code: self).registration_link.deliver_later
  end

  def registration_link
    "http://localhost:3000/registration/#{self.code}" #TODO: put this in an env
  end
end
