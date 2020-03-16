class OtherProductItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :other_product
end
