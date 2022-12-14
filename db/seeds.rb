# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
# Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 56789, category:"italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",  phone_number: 12345, category:"japanese"}
wok_hey =  {name: "Wok Hey", address: "13B Clark Quay, Singapore ",  phone_number: 44567, category:"chinese"}
taco_bell =  {name: "Taco Bell", address: "36A Main brandon St, New York 30",  phone_number: 88690, category:"french"}
macdonalds =  {name: "macdonalds", address: "10c low St, London E1 8PQ",  phone_number: 98745, category:"belgian"}

[dishoom, pizza_east, wok_hey, taco_bell, macdonalds].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# dishoom_review = Review.new(content: "nice", rating: 3)
# dishoom_review.restaurant = dishoom
# dishoom_review.save!
