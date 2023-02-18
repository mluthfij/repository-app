class SearchController < ApplicationController
  before_action :authenticate_user!
  def index
        q = params[:q]
        @repos = Repo.ransack(name_cont: q).result
        @folders = Folder.ransack(name_cont: q).result
        @items = Item.ransack(item_file_cont: q).result
        # @items = Item.ransack(item_name_cont: q).result
        # @all_item = Item.all
        # @all.each do |item|
        #     item.posts.blobs.filename.to_a
        # end
    end
end