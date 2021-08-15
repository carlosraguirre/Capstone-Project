class RestaurantListSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :list_name
  belongs_to :restaurant
end
