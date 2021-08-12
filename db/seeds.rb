# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Creating user"
User.create!([
  {first_name: "Carlos", last_name: "Aguirre", email: "car@los.com"},
])
p "creating"
UserList.create!([
  {user_id: 1, list_name: "favorite restaurants"},
  {user_id: 1, list_name: "breakfast"},
  {user_id: 2, list_name: "lunch"},
  {user_id: 3, list_name: "dinner"}
])
Cuisine.create!([
  {cuisine: "French"},
  {cuisine: "Spanish"},
  {cuisine: "Coffee Shop"},
  {cuisine: "Peruvian"},
  {cuisine: "Caribbean"},
  {cuisine: "Italian"},
  {cuisine: "Bakery"}
])
Restaurant.create!([
  {restaurant_name: "Le Diplomate", cuisine_id: 1},
  {restaurant_name: "Barcelona Wine Bar", cuisine_id: 2},
  {restaurant_name: "Bluestone Lane Logan Circle Cafe", cuisine_id: 3},
  {restaurant_name: "Chicken + Whiskey", cuisine_id: 4},
  {restaurant_name: "Colada Shop", cuisine_id: 5},
  {restaurant_name: "Floriana", cuisine_id: 6},
  {restaurant_name: "Tatte Bakery & Cafe", cuisine_id: 7}
])
