class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :address, :ask_for
  # has_one :order
end
