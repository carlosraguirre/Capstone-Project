class UserListSerializer < ActiveModel::Serializer
  attributes :id

  belongs to :user
  has_many :restaurant_lists

end
