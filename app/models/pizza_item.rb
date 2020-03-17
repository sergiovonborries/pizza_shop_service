class PizzaItem < ApplicationRecord
  belongs_to :pizza_size
  belongs_to :pizza
  belongs_to :order_item

  has_many :pizza_item_toppings
  has_many :toppings, through: :pizza_item_toppings

  has_many :pizza_item_ingredients
  has_many :ingredients, through: :pizza_item_ingredients
  accepts_nested_attributes_for :pizza_item_ingredients, :pizza_item_toppings, :allow_destroy => true

  enum cheese: { provel: 0, cheedar: 1, catupiri: 2 }
  enum crust: { thin: 0, thick: 1, filled_with_cheese: 2 }
  enum sauce: { bbq: 0, pesto: 1, bechamel: 2, ranch: 3 }

end
