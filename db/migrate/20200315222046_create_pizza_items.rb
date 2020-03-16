class CreatePizzaItems < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_items do |t|
      t.integer :cheese, default: 0
      t.integer :sauce, default: 0
      t.integer :crust, default: 0
      t.integer :custom_slices
      t.references :pizza_size, null: false, foreign_key: true
      t.references :pizza, null: false, foreign_key: true

      t.timestamps
    end
  end
end
