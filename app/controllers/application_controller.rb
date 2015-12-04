class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :cart_size_calc

  def cart_size_calc
    @cart_size = current_user.carted_figurines.where(status: "carted").count if user_signed_in?
  end

end
