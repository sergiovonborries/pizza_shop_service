class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :pizza_production_processes, key: 'processes'
end
