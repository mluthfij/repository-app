class AddPrivateRoleToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :private_role, :boolean, default: false
    add_column :folders, :private_role, :boolean, default: false
  end
end
