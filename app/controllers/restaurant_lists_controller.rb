class RestaurantListsController < ApplicationController
  # before_action :authenticate_user

  def index
    restaurant_lists = RestaurantList.all
    render json: restaurant_lists
  end

  def show
    restaurant_list = RestaurantList.find_by(id: params[:id])
    render json: restaurant_list
  end

  def create
    restaurant_list = RestaurantList.new(
      user_list_id: params[:user_list_id],
      restaurant_id: params[:restaurant_id]
    )
    if restaurant_list.save
      render json: restaurant_list
    else
      render json: {error: restaurant_list.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
