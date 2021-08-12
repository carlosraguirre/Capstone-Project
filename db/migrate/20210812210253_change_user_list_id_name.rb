class ChangeUserListIdName < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurant_lists, :user_list_id, :list_name_id
  end
end
