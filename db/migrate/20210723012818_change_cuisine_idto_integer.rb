class ChangeCuisineIdtoInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurants, :cuisine_id, :integer, using: 'cuisine_id::integer'
  end
end
