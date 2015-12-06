class SuppliersController < ApplicationController
  # before_action :authenticate_admin!

  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
  end

  def new
    @supplier = Supplier.new
  end

  def create
    supplier = Supplier.create(params[:supplier])
    redirect_to "/suppliers/#{supplier.id}"
  end

  def edit
    @supplier = Supplier.find_by(id: params[:id])
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.update(params[:supplier])
    redirect_to "/suppliers/#{supplier.id}"
  end

  def destroy
    Supplier.find_by(id: params[:id]).update(active: false)
    redirect_to "/suppliers"
  end
end
