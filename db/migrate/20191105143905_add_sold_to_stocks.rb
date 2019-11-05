class AddSoldToStocks < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :sold, :boolean
  end
end
