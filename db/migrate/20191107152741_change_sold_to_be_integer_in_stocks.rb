class ChangeSoldToBeIntegerInStocks < ActiveRecord::Migration[6.0]
  def change
    change_column :stocks, :sold, 'integer USING CAST(sold AS integer)'
  end
end
