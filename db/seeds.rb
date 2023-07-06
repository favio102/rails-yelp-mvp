# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning database...."
Restaurant.destroy_all

puts "Creating restaurants...."
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: rand(10000..9999999999).to_i.to_s,
    category: Restaurant::CATEGORIES.sample
  )
  puts "restaurant with id: #{restaurant.id} has benn created!"
end

# 100.times do
#   review = Review.create(
#     content: Faker::Restaurant.review,
#     rating: rand(1..5),
#     restaurant: restaurant
#   )
#   puts "review with id: #{review.id} has been created!"
# end

puts "Created!"
