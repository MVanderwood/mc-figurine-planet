class FigurinesController < ApplicationController

  def home
    @title = "Welcome to Figurine Planet"
  end

  def index

  end

  def show
    figurine_id = params[:id]
    @figurine = Figurine.find_by(id: figurine_id)
  end

  def new

  end

  def create
    Figurine.create({
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image: params[:image]
      })
  end

  def edit
    @figurine = Figurine.find_by(id: params[:id])
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.updated({
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image: params[:image]
      })
    redirect_to "/figurine/#{r}"
end
