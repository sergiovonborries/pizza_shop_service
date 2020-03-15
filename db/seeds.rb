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