class User < ActiveRecord::Base
  has_many :carts

  def current_cart
    current_cart = Cart.find(session[:cart_id])
  end

end
