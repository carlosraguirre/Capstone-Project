Rails.application.routes.draw do

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/restaurant_lists" => "restaurant_lists#index"
  get "/restaurant_lists/:id" => "restaurant_lists#show"
end
