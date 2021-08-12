class ChangeUserListTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :user_lists, :list_names
  end
end
