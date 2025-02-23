class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  belongs_to :order, optional: true

  def single_product_total
    self.product.price * self.quantity
  end
end
