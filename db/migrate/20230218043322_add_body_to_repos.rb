class AddBodyToRepos < ActiveRecord::Migration[7.0]
  def change
    add_column :repos, :body, :string
  end
end
