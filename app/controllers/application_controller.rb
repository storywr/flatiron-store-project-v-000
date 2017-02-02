class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :initialize_cart

  private

  def initialize_cart
    @cart = current_user.current_cart
    if @cart.nil?
      @cart = Cart.create(user: current_user)
      current_user.current_cart = @cart
      current_user.save
    end
  end

end
