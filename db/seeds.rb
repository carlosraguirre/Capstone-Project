# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# p "Creating user"
# User.create!([
#   {name: "Carlos Aguirre", email: "car@los.com", password_digest: "password"}
# ])

# p "creating list names"
# ListName.create!([
#   {list_name: "favorite restaurants"},
#   {list_name: "breakfast"}
# ])

# p "creating restaurant lists"
# RestaurantList.create!([
#   {}
# ])
# p "creating cuisines"
# Cuisine.create!([
#   {cuisine: "French"},
#   {cuisine: "Spanish"},
#   {cuisine: "Coffee Shop"},
#   {cuisine: "Peruvian"},
#   {cuisine: "Caribbean"},
#   {cuisine: "Italian"},
#   {cuisine: "Bakery"}
# ])

index = 1
while index < 35
  p Restaurant.count
  response = HTTP.get("https://api.documenu.com/v2/restaurants/state/DC?key=#{Rails.application.credentials.DOCUMENU_API_KEY}&size=100&page=#{index}")
  
  restaurants = response.parse(:json)["data"]
  
  restaurants.each do |restaurant|
    p restaurant
    Restaurant.create!(
      restaurant_name: restaurant["restaurant_name"]
    )
    p ""
  end
  p Restaurant.count
  index += 1
end