class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :ticker
      t.string :quantity
      t.string :date
      t.string :price

      t.timestamps
    end
  end
end
