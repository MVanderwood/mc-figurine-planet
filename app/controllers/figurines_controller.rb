class FigurinesController < ApplicationController

  def home
    @title = "Welcome to Figurine Planet"
  end

  def index

  end

  def show
    @figurine = Figurine.find_by(id: params[:id])
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
    figurine = Figurine.find_by(id: params[:id])
    figurine.update({
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image: params[:image]
      })
    redirect_to "/figurine/#{figurine.id}"
  end

  def destroy
    figurine = Figurine.find_by(id: params[:id])
    figurine.destroy
    redirect_to "/figurines"
  end

end
