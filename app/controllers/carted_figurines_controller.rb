class CartedFigurinesController < ApplicationController

  def index
    if current_user.carted_figurines.where("status = ?", "carted").count == 0
      redirect_to "/"
    else
      @carted_figurines = current_user.carted_figurines.where(status: "carted")
    end
  end

  def create
    CartedFigurine.create({
      user_id: current_user.id,
      figurine_id: params[:figurine_id],
      quantity: params[:quantity],
      status: "carted" 
      })
    redirect_to "/cart"
  end

  def destroy
    CartedFigurine.find_by(id: params[:id]).update(status: "removed")
    redirect_to '/cart'
  end
end
