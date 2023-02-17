class SearchController < ApplicationController
    def index
        q = params[:q]
        @repos = Repo.ransack(name_cont: q).result
        # @items = Item.ransack(name_cont: q).result
        @folders = Folder.ransack(name_cont: q).result
        # @items = Item.ransack(posts.filename: q).result
    end
end