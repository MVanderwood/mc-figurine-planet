class OrdersController < ApplicationController

  def create
    order = Order.create({
      quantity: params[:quantity],
      figurine_id: params[:figurine_id]
      })
    redirect_to "/orders/#{order.id}"
  end

  def show

  end
end
