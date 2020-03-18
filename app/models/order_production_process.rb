class OrderProductionProcess < ApplicationRecord
  belongs_to :order
  belongs_to :production_process
end
