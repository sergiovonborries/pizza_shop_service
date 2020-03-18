class Order < ApplicationRecord
    has_many :order_items
    has_one :delivery
    accepts_nested_attributes_for :delivery, :order_items
    has_many :order_production_processes
    has_many :production_processes, through: :order_production_processes

    after_save :create_process

    private

    def create_process
        ProductionProcess.all.each do |production_process|
            OrderProductionProcess.create(production_process_id: production_process.id, minutes: rand(1..30), order_id: self.id)
        end
    end
end
