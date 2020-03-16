class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.string :address
      t.string :ask_for
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
