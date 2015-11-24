class RemoveImagesFromFigurines < ActiveRecord::Migration
  def change
    remove_column :figurines, :image, :string
  end
end
