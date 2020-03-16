class CreateOtherProductItems < ActiveRecord::Migration[6.0]
  def change
    create_table :other_product_items do |t|
      t.references :other_product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
