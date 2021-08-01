class Restaurant < ApplicationRecord
  has_many :restaurant_lists
  belongs_to :cuisine
end
