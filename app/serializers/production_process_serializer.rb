class ProductionProcessSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :pizzas
end
