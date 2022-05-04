class AddUserRefToRegistrationCodes < ActiveRecord::Migration[7.0]
  def change
    add_reference :registration_codes, :user, null: false, foreign_key: true
  end
end
