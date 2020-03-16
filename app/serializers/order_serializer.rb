class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer_name, :comment
  has_many :order_items
  has_one :delivery
end
