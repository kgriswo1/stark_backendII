class RemoveBoughtFromStocks < ActiveRecord::Migration[6.0]
  def change
    remove_column :stocks, :bought, :boolean
  end
end
