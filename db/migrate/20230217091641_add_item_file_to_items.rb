class AddItemFileToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :item_file, :string
    add_column :items, :item_extension, :string
  end
end
