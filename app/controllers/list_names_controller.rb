class ListNamesController < ApplicationController

  def create
    list_name = ListName.new(
      user_id: current_user.id,
      list_name: params[:list_name]
    )
    if list_name.save!
      render json: list_name
    else
      render json: {error: list_name.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    list_names = ListName.all
    render json: list_names
  end

  def show
    list_name = ListName.find_by(id: params[:id])
    render json: list_name
  end
end
