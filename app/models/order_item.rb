class OrderItem < ApplicationRecord
  belongs_to :order, optional: true
  has_one :pizza_item
  has_one :other_product_item
  accepts_nested_attributes_for :pizza_item, :other_product_item
end
