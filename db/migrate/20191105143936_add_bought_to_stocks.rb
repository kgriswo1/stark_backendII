class AddBoughtToStocks < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :bought, :boolean
  end
end
