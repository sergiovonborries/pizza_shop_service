class CreatePizzaSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_sizes do |t|
      t.string :description
      t.integer :default_slices

      t.timestamps
    end
  end
end
