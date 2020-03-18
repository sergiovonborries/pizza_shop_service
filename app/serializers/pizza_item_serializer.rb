class PizzaItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :cheese, :sauce, :crust, :slices, :pizza_size, :ingredients, :toppings
  # has_many :toppings
  # has_many :ingredients

  def name
    object.pizza.name
  end

  def slices
    object.custom_slices.presence ? object.custom_slices : object.pizza_size.default_slices
  end

  def pizza_size
    object.pizza_size.description
  end

  def ingredients
    ActiveModel::SerializableResource.new(object.ingredients,  each_serializer: IngredientSerializer)
  end

  def toppings
    ActiveModel::SerializableResource.new(object.toppings,  each_serializer: ToppingSerializer)
  end
end
