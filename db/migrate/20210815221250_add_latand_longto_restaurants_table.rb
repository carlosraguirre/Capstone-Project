class AddLatandLongtoRestaurantsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :latitude, :string
    add_column :restaurants, :longitude, :string
  end
end
