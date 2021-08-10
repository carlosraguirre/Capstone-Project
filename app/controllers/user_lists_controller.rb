class UserListsController < ApplicationController

  def create
    user_list = UserList.new(
      user_id: current_user.id,
      list_name: params[:list_name]
    )
    if user_list.save
      render json: user_list
    else
      render json: {error: user_list.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    user_lists = UserList.all
    render json: user_lists
  end
end
