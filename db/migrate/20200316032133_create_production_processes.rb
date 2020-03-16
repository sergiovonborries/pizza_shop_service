class CreateProductionProcesses < ActiveRecord::Migration[6.0]
  def change
    create_table :production_processes do |t|
      t.string :name

      t.timestamps
    end
  end
end
