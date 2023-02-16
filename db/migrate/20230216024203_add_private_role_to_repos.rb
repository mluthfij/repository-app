class AddPrivateRoleToRepos < ActiveRecord::Migration[7.0]
  def change
    add_column :repos, :private_role, :boolean, default: false
  end
end
