class AddDetailsToPizzaItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :pizza_items, :order_item, null: true, foreign_key: true
  end
end
