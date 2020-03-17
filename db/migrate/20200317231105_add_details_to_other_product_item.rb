class AddDetailsToOtherProductItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :other_product_items, :order_item, null: true, foreign_key: true
  end
end
