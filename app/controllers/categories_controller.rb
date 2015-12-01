class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(name: params[:category])
    @figurines = @category.figurines
  end
end
