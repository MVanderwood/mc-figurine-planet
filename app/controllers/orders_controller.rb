class OrdersController < ApplicationController

  def create
    @order = Order.create({user_id: current_user.id})
    current_user.carted_figurines.where(status: "carted").each do |carted_figurine|
      carted_figurine.update({status: "purchased", order_id: @order.id})
    end
    @order.update({
      subtotal: @order.subtotal_calc,
      tax: @order.tax_calc,
      total: @order.total_calc
      })
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
