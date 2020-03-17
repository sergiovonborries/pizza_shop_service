class OrderItem < ApplicationRecord
  belongs_to :order, optional: true
  has_one :pizza_item
  has_one :other_product_item
  
end
