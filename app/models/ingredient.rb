class Ingredient < ApplicationRecord
    has_many :pizza_item_ingredients
    has_many :piza_items, through: :pizza_item_ingredients
end
