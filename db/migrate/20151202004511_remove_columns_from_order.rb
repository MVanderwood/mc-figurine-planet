class RemoveColumnsFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :figurine_id, :integer
    remove_column :orders, :quantity, :integer
  end
end
