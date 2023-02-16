class AddFolderIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :folder_id, :integer, null: true
    add_column :items, :user_id, :integer
    add_index :items, :user_id
  end
end
