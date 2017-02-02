class LineItemsController < ApplicationController
  before_action :initialize_cart

  def create
    line_item = current_user.current_cart.add_item(params[:item_id])
    line_item.save
    redirect_to cart_path(current_user.current_cart)
  end

end
