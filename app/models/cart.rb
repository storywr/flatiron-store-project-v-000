class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :items, through: :line_items

  def add_item
  end
  
end
