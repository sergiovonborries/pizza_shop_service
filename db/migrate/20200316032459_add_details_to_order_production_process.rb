class AddDetailsToOrderProductionProcess < ActiveRecord::Migration[6.0]
  def change
    add_column :order_production_processes, :minutes, :integer
  end
end
