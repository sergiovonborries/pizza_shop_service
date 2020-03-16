class AddDetailsToPizzaProductionProcess < ActiveRecord::Migration[6.0]
  def change
    add_column :pizza_production_processes, :minutes, :integer
  end
end
