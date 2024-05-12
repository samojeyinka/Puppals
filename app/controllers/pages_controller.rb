class  PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

    def index
        redirect_to feeds_path if current_user
    end
end