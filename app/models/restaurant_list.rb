class RestaurantList < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :list_name
end
