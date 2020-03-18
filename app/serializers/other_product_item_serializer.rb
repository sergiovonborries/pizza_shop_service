class OtherProductItemSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :other_product

  def name
    object.other_product ? object.other_product.name : ''
  end
end
