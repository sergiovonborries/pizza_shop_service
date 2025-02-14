class CreateOrderProductionProcesses < ActiveRecord::Migration[6.0]
  def change
    create_table :order_production_processes do |t|
      t.references :order, null: false, foreign_key: true
      t.references :production_process, null: false, foreign_key: true

      t.timestamps
    end
  end
end
