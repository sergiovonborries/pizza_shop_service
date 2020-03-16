class PizzaProductionProcess < ApplicationRecord
  belongs_to :pizza
  belongs_to :production_process
end
