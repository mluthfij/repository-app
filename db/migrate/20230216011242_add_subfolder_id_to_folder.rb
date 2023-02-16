class AddSubfolderIdToFolder < ActiveRecord::Migration[7.0]
  def change
    add_column :folders, :subfolder_id, :integer, null: true
    add_column :folders, :user_id, :integer
    add_index :folders, :user_id
  end
end
