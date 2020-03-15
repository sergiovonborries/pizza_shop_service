class PizzaItemIngredient < ApplicationRecord
  belongs_to :pizza_item
  belongs_to :ingredient
end
