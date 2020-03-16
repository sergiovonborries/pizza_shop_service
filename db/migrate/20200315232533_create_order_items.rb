class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.references :order, null: false, foreign_key: true
      t.integer :orderable_id
      t.string :orderable_type

      t.timestamps
    end
  end
end
