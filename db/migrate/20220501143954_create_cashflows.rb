class CreateCashflows < ActiveRecord::Migration[7.0]
  def change
    create_table :cashflows do |t|
      t.string :name
      t.text :description
      t.belongs_to :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
