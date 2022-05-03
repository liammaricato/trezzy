class CreateRegistrationCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :registration_codes do |t|
      t.string :code
      t.string :email
      t.string :first_name

      t.timestamps
    end
  end
end
