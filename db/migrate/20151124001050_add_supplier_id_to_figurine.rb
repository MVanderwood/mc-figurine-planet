class AddSupplierIdToFigurine < ActiveRecord::Migration
  def change
    add_column :figurines, :supplier_id, :integer
  end
end
