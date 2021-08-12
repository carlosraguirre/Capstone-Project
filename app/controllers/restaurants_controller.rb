class RestaurantsController < ApplicationController
  require 'http'
  
  def show
    restaurant = Restaurant.find_by(id: params[:id])
    render json: restaurant
  end

  def index
    # limit = 20
    # offset = (params[:page_number].to_i - 1) * 10
    response = HTTP.get("https://api.documenu.com/v2/restaurants/state/DC?key=#{Rails.application.credentials.DOCUMENU_API_KEY}")

    render json: response.parse(:json)
  end
end