class ProductionProcess < ApplicationRecord
    has_many :pizza_production_processes
    has_many :pizzas, through: :pizza_production_processes
end
