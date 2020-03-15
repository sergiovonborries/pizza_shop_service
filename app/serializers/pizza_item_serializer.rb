class PizzaItemSerializer < ActiveModel::Serializer
  attributes :id, :cheese, :sauce, :crust, :custom_slices
  has_one :pizza_size
  has_many :toppings
  has_many :ingredients
end
