class RestaurantsController < ApplicationController
  require 'http'
  
  def show
    restaurant = Restaurant.find_by(id: params[:id])
    render json: restaurant
  end

  def index
    response = HTTP.get("https://api.documenu.com/v2/restaurants/state/DC?key=#{Rails.application.credentials.DOCUMENU_API_KEY}&size=100")
    # restaurants = Response.find[:restaurant_name]

    render json: response.parse(:json)
  end
end