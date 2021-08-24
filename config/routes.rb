Rails.application.routes.draw do

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"

  get "/restaurant_lists" => "restaurant_lists#index"
  get "/restaurant_lists/:id" => "restaurant_lists#show"
  post "/restaurant_lists" => "restaurant_lists#create"
  delete "/restaurant_lists/:id" => "restaurant_lists#destroy"  

  get "/restaurants/:id" => "restaurants#show"
  get "/restaurants/" => "restaurants#index"
  post "/restaurants" => "restaurants#create"

  post "/list_names" => "list_names#create"
  get "/list_names" => "list_names#index"
  get "/list_names/:id" => "list_names#show"
  delete "/list_names/:id" => "list_names#destroy"

end
