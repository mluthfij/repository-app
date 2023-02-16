class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_profile
    def show
        @repos = @profile.repos.all
    end

    private
    def set_profile
        @profile = User.find(params[:id]) rescue not_found  
    end
end