class RestaurantList < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :user_list
end
