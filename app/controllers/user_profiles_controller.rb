class UserProfilesController < ApplicationController

    def show
        @profile = Profile.find(params[:id]).user
    end

   def new
        @profile = ProfileComponent.new(profile: Profile.new)
    end


    def create
        @profile = current_user.build_profile(profile_params)
        if @profile.save
            redirect_to user_profile_path(@profile)
        else
            @profile = ProfileComponent.new(profile: @profile)
            render :new
        end
    end

    private

    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :bio,  :photo, :state, :city, :country)
    end
end


