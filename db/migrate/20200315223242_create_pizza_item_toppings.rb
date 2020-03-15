class CreatePizzaItemToppings < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_item_toppings do |t|
      t.references :pizza_item, null: false, foreign_key: true
      t.references :topping, null: false, foreign_key: true

      t.timestamps
    end
  end
end
