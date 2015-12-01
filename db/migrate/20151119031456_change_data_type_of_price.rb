class ChangeDataTypeOfPrice < ActiveRecord::Migration
  def change
    change_column :figurines, :price, "decimal USING CASE(price AS decimal", precision: 10, scale: 2
  end
end
