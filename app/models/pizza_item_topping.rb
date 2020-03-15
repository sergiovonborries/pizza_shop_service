class PizzaItemTopping < ApplicationRecord
  belongs_to :pizza_item
  belongs_to :topping
end
