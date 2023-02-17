class Item < ApplicationRecord
  belongs_to :repo
  belongs_to :folder, optional: true
  validates :posts, presence: true
  has_many_attached :posts
  belongs_to :user
  validates :item_file, presence: true
  validates :item_extension, presence: true

  # before_save :create_filename
  #
  # validates :create_filename, presence: true
  # def item_name
  #   posts.blobs.first.filename.to_s
  #   # posts.blobs.first.filename.to_s
    
  #   # @items.each do |item|
  #   #   item.posts.blobs.first.filename.to_s
  #   # end
  # end
  
  # def create_filename
  #     @repo = Repo.find(params[:repo_id])
  #     @item = @repo.items.new(params_item)
  #     @save_item = Item.new(item_file: posts.blobs.first.filename.to_s)
  #     @save_item.save
  # end
  #
end
