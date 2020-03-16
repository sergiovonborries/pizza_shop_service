class Pizza < ApplicationRecord
    has_many :pizza_production_processes
    has_many :production_processes, through: :pizza_production_processes
end
