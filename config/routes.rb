Rails.application.routes.draw do

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/users" => "users#index"

  get "/restaurant_lists" => "restaurant_lists#index"
  get "/restaurant_lists/:id" => "restaurant_lists#show"
  post "/restaurant_lists" => "restaurant_lists#create"

  get "/restaurants/:id" => "restaurants#show"
  get "/restaurants" => "restaurants#index"
  post "/restaurants" => "restaurants#create"

  post "/user_lists" => "user_lists#create"
  get "/user_lists" => "user_lists#index"

end
