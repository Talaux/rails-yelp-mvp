# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Restaurant data base"
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "05 33 00 84 17", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "05 33 00 84 17", category: "italian"}
burger_story =  {name: "Burger", address: "82 avenue thiers, 33000 BORDEAUX", phone_number: "05 33 00 84 18", category: "french"}
pasta_gusto =  {name: "Ravioli", address: "12 avenue la mouette, 17200 ROYAN", phone_number: "05 32 00 81 17", category: "italian"}
chez_amhed =  {name: "Kebab", address: "33 avenue des champs elysées, 75000 PARIS", phone_number: "05 33 43 84 20", category: "chinese"}

[dishoom, pizza_east, burger_story, pasta_gusto, chez_amhed].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
