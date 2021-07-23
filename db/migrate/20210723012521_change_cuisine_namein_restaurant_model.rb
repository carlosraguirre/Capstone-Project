class ChangeCuisineNameinRestaurantModel < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :cuisine, :cuisine_id
  end
end
