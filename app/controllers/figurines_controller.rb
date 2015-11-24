class FigurinesController < ApplicationController

  def index
    if params[:search] 
      @figurines = Figurine.where("name LIKE ?", "%#{params[:search]}%")
    elsif params[:sort_by] == "discount"
      @figurines = Figurine.where("price <= ?", 10)
    elsif params[:sort_by] && params[:sort_order]
      @figurines = Figurine.order(params[:sort_by] => params[:sort_order])
    elsif params[:sort_by]
      @figurines = Figurine.order(params[:sort_by])
    else
      @figurines = Figurine.all
    end
  end

  def show
    if params[:id] == "random"
      @figurine = Figurine.find_by(id: rand(1..Figurine.count))
    else
      @figurine = Figurine.find_by(id: params[:id])
      flash[:success] = @figurine.discount
    end
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
