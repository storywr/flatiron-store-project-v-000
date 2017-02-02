class CartsController < ApplicationController
  before_action :set_cart

  def show
  end

  def checkout
    @cart.checkout
    current_user.current_cart = nil
    if @cart.save && current_user.save
      redirect_to cart_path(@cart)
    end
  end

  private

  def set_cart
    @cart = current_user.current_cart
    redirect_to store_path if @cart.nil?
  end

end
