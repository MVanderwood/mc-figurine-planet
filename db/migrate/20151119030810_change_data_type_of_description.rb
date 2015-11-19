class ChangeDataTypeOfDescription < ActiveRecord::Migration
  def change
    change_column :figurines, :description, :text
  end
end
