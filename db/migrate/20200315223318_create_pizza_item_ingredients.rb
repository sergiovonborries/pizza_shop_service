class CreatePizzaItemIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_item_ingredients do |t|
      t.references :pizza_item, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
