class FigurinesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    if params[:search] 
      @figurines = Figurine.where("name LIKE ?", "%#{params[:search]}%")
      Category.where("name LIKE ?", "%#{params[:search]}%").each do |category|
        category.figurines.each do |figurine|
          @figurines << figurine
        end
      end
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
    figurine = Figurine.create({
      name: params[:name],
      price: params[:price],
      description: params[:description],
      })
    Image.create({
      url: param[:image],
      figurine_id: figurine.id
      })
  end

  def edit
    @figurine = Figurine.find_by(id: params[:id])
  end

  def update
    @figurine = Figurine.find_by(id: params[:id])
    if @figurine.update({name: params[:name], price: params[:price], description: params[:description]})
    redirect_to "/figurines/#{figurine.id}"
    else
      render :edit
    end
  end

  def destroy
    Figurine.find_by(id: params[:id]).destroy
    redirect_to "/figurines"
  end

  private

  def authenticate_admin!
    unless user_signed_in? && current_user.Admin
      redirect_to '/'
    end
  end
end
