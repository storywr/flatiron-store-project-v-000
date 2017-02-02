class LineItemsController < ApplicationController

  def create
    line_item = current_user.current_cart.add_item(params[:item_id])
    line_item.save
  end

end
