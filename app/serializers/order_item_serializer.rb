class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :orderable_id, :orderable_type
end
