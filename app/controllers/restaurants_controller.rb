class RestaurantsController < ApplicationController
  require 'http'
  
  def show
    restaurant = Restaurant.find_by(id: params[:id])
    render json: restaurant
  end

  def index
    response = HTTP.get("https://api.documenu.com/v2/restaurants/state/DC?key=#{Rails.application.credentials.DOCUMENU_API_KEY}&size=100&page=1")

    render json: response.parse(:json)
    # parsed_json = JSON.parse(response)
    # parsed_json.dig(:data, :restaurant_name)
    # p parsed_json[:data][restaurant_name]
  

    

    # request["data"].each do |


    # if !request.nil?



    #   json["data"].map do |restaurant|



        
    #     Restaurant.create(restaurant_name: "#{restaurant["data"]["restaurant_name"]}")
    #   end
    # else
    #   puts "error seeding restaurant names"
    # end
  end
end