class Topping < ApplicationRecord
  has_many :pizza_item_toppings
  has_many :pizza_items, through: :pizza_item_toppings
end
