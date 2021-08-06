class RestaurantListSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user_list
  belongs_to :restaurant
end
