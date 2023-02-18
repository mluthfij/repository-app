class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_profile
    def show
        @repos = @profile.repos.order(:name).page(params[:page]).per(4)
    end

    private
    def set_profile
        @profile = User.find(params[:id]) rescue not_found  
    end
end