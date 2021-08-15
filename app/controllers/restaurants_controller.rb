class RestaurantsController < ApplicationController
  # require 'http'
  
  def show
    restaurant = Restaurant.find_by(id: params[:id])
    render json: restaurant
  end

  def index
    restaurants = Restaurant.all
    render json: restaurants
  end
end