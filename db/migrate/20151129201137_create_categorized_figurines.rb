class CreateCategorizedFigurines < ActiveRecord::Migration
  def change
    create_table :categorized_figurines do |t|
      t.integer :figurine_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
