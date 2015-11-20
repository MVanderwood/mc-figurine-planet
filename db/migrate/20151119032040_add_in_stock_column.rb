class AddInStockColumn < ActiveRecord::Migration
  def change
    add_column :figurines, :in_stock, :boolean
  end
end
