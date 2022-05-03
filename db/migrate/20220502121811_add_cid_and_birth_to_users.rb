class AddCidAndBirthToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :cid, :integer
    add_column :users, :birthday, :date
  end
end
