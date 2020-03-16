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

if Order.count == 0
    10.times do
        order = Order.create(customer_name: Faker::Name.name_with_middle, comment: Faker::Lorem.sentence)
        rand(1..6).times do
            pizzaitem = PizzaItem.new(cheese: rand(3), crust: rand(3), sauce: rand(4), pizza_size_id: PizzaSize.order('RANDOM()').first.id)
            3.times do
                pizzaitem.pizza_item_ingredients.build(ingredient_id: Ingredient.order('RANDOM()').first.id)
                pizzaitem.pizza_item_toppings.build(topping_id: Topping.order('RANDOM()').first.id)
            end
            pizzaitem.save
            orderitem = OrderItem.create(order_id: order.id, quantity: Faker::Number.number(digits: 1), orderable: pizzaitem)
        end
    end
    puts 'Some Orders Created'
end