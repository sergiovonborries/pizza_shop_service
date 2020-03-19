# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Pizza.count == 0
    Pizza.create!(name: 'Hawaian')
    Pizza.create!(name: 'Brazilian')
    Pizza.create!(name: 'Veggie')
    Pizza.create!(name: 'Margarita')
    puts 'Some pizzas created'
end

if OtherProduct.count == 0
    OtherProduct.create!(name: 'Spaghetti')
    OtherProduct.create!(name: 'Lasagna')
    OtherProduct.create!(name: 'Veggie Salad')
    OtherProduct.create!(name: 'Margarita Salad')
    puts 'Some OtherProduct created'
end

if ProductionProcess.count == 0
    ProductionProcess.create(name: "Baking")
    ProductionProcess.create(name: "Cooking")
    ProductionProcess.create(name: "Heating")
end

# if OrderProductionProcess.count == 0
#     Pizza.all.each do |pizza|
#         ProductionProcess.all.each do |production_process|
#             pizza.order_production_processes.build(production_process_id: production_process.id, minutes: rand(1..30))
#             pizza.save
#         end
#     end
#     puts 'Some OrderProductionProcess created'
# end

if Ingredient.count == 0
    25.times do
        Ingredient.create( 
            name: Faker::Food.ingredient
        )
    end
    puts 'Some ingredients created'
end   

if Topping.count == 0
    10.times do
        Topping.create( 
            name: Faker::Food.fruits
        )
    end
    10.times do
        Topping.create( 
            name: Faker::Food.vegetables
        )
    end
    puts 'Some toppings created'
end   

if PizzaSize.count == 0
    PizzaSize.create!(description: 'Personal', default_slices: 1)
    PizzaSize.create!(description: 'Small', default_slices: 4)
    PizzaSize.create!(description: 'Medium', default_slices: 6)
    PizzaSize.create!(description: 'Large', default_slices: 8)
    puts 'Some PizzaSize created'
end

# UNCOMMENT THIS SECCION
# If you want to have sample data for the index, this will generate 10 Orders with random ordem items

# if Order.count == 0
#     10.times do
#         order = Order.create(customer_name: Faker::Name.name_with_middle, comment: Faker::Lorem.sentence)
#         Delivery.create(address: Faker::Address.street_address, ask_for: order.customer_name, order_id: order.id) if [true, false].sample
#         rand(1..6).times do
#             item = nil
#             orderitem = OrderItem.create(order_id: order.id, quantity: Faker::Number.number(digits: 1)) if order
#             if [true, false].sample
#                 item = PizzaItem.new(order_item_id: orderitem.id, cheese: rand(3), crust: rand(3), sauce: rand(4), pizza_size_id: PizzaSize.order('RANDOM()').first.id, pizza_id: Pizza.order('RANDOM()').first.id)
#                 3.times do
#                     item.pizza_item_ingredients.build(ingredient_id: Ingredient.order('RANDOM()').first.id)
#                     item.pizza_item_toppings.build(topping_id: Topping.order('RANDOM()').first.id)
#                 end
#             else
#                 item = OtherProductItem.new(order_item_id: orderitem.id, other_product_id: OtherProduct.order('RANDOM()').first.id)
#             end
#             item.save if item
#         end
#     end
#     puts 'Some Orders Created'
# end