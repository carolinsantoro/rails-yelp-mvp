# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  5.times do
    Review.create(
    content: Faker::Restaurant.review,
    rating: [0, 1, 2, 3, 4, 5].sample,
    restaurant_id: restaurant.id
  )
  end
end
