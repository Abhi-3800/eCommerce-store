class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  before_action :set_current_user

  def set_current_user
    if current_user && current_user.cart.nil?
      @current_cart = Cart.create
      session[:cart_id] = @current_cart.id
      @current_cart.update!(user: current_user)
    elsif current_user && current_user.cart.present?
      @current_cart = Cart.where(user_id: current_user.id).last
      session[:cart_id] = @current_cart.id
    end
  end
end
