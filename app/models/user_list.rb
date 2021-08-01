class UserList < ApplicationRecord
  belongs_to :user
  has_many :restaurant_list
end
