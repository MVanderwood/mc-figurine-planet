class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.decimal :shipping_cost, precision: 5, scale: 2
      t.string :website
      t.timestamps null: false
    end
  end
end
