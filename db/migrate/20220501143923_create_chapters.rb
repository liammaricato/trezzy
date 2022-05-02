class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.string :name
      t.integer :number
      t.date :founded_at
      t.string :city

      t.timestamps
    end
  end
end
