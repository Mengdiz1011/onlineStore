class Lineitem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def item_total_price
    self.product.price * self.quantity
  end
end
