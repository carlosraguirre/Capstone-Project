class CreateRestaurantLists < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_lists do |t|
      t.integer :user_list_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
