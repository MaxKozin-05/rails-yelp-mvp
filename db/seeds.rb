puts "Cleaning up database..."
Restaurant.destroy_all

puts "Creating restaurants..."

restaurants = [
  { name: "Luigi's Pasta", address: "123 Pasta Lane, Melbourne", category: "italian" },
  { name: "Dragon Express", address: "456 Bamboo Street, Sydney", category: "chinese" },
  { name: "Sakura Sushi", address: "789 Cherry Blossom Ave, Brisbane", category: "japanese" },
  { name: "Le Petit Chef", address: "321 Paris Rd, Adelaide", category: "french" },
  { name: "Brussels Bites", address: "654 Waffle Blvd, Perth", category: "belgian" }
]

restaurants.each do |restaurant_data|
  restaurant = Restaurant.create!(restaurant_data)
  puts "Created #{restaurant.name}"
end

puts "Seeding completed successfully!"
