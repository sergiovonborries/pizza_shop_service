# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_15_223318) do

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pizza_item_ingredients", force: :cascade do |t|
    t.integer "pizza_item_id", null: false
    t.integer "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_pizza_item_ingredients_on_ingredient_id"
    t.index ["pizza_item_id"], name: "index_pizza_item_ingredients_on_pizza_item_id"
  end

  create_table "pizza_item_toppings", force: :cascade do |t|
    t.integer "pizza_item_id", null: false
    t.integer "topping_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pizza_item_id"], name: "index_pizza_item_toppings_on_pizza_item_id"
    t.index ["topping_id"], name: "index_pizza_item_toppings_on_topping_id"
  end

  create_table "pizza_items", force: :cascade do |t|
    t.integer "cheese", default: 0
    t.integer "sauce", default: 0
    t.integer "crust", default: 0
    t.integer "custom_slices"
    t.integer "pizza_size_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pizza_size_id"], name: "index_pizza_items_on_pizza_size_id"
  end

  create_table "pizza_sizes", force: :cascade do |t|
    t.string "description"
    t.integer "default_slices"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pizza_item_ingredients", "ingredients"
  add_foreign_key "pizza_item_ingredients", "pizza_items"
  add_foreign_key "pizza_item_toppings", "pizza_items"
  add_foreign_key "pizza_item_toppings", "toppings"
  add_foreign_key "pizza_items", "pizza_sizes"
end
