# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east = { name: "Pizza East", address: "23A Low St, London ", category: "italian" }
french_east = { name: "French east", address: "545A Calvair St, London ", category: "japanese" }
thai_place = { name: "Thai place", address: "56A Church St, Paris ", category: "french" }
sushi_spot = { name: "Sushi spot", address: "45 North Star St, Tokyo", category: "belgian" }

[dishoom, pizza_east, french_east, thai_place, sushi_spot].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
