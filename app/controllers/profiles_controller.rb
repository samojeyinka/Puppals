class ProfilesController < ApplicationController
    def show
            @me = User.find(params[:id]);
            @profile = Profile.find(params[:id])
        

    end
end