class ListName < ApplicationRecord
  belongs_to :user
  has_many :restaurant_lists
  has_many :restaurants, through: :restaurant_lists
end
