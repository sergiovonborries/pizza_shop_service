class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :quantity
  has_one :pizza_item
  has_one :other_product_item

end
