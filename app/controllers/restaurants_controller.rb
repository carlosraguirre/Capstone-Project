class RestaurantsController < ApplicationController
  require 'http'
  
  def show
    restaurant = Restaurant.find_by(id: params[:id])
    render json: restaurant
  end

  def index
    response = HTTP.get("https://api.documenu.com/v2/restaurants/state/DC?key=#{Rails.application.credentials.DOCUMENU_API_KEY}")
 
    render json: response.parse(:json)
    # restaurants = response.parse(:json)
    # restaurant_names = restaurants{'data'}
    # p restaurant_names

  end
end

# EDITOR="code --wait" rails credentials:edit