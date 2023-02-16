class AddUserIdToRepos < ActiveRecord::Migration[7.0]
  def change
    add_column :repos, :user_id, :integer
    add_index :repos, :user_id
  end
end
