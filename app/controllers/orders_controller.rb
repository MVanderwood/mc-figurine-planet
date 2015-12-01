class OrdersController < ApplicationController

  def create
    order = Order.new({
      quantity: params[:quantity].to_i,
      figurine_id: params[:figurine_id],
      })
    order = Order.create({
      quantity: order.quantity,
      figurine_id: order.figurine_id,
      user_id: current_user.id,
      subtotal: order.subtotal_calc,
      tax: order.tax_calc,
      total: order.total_calc
      })
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
