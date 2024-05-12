class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])

    devise_parameter_sanitizer.permit(:account_update, keys: [:email])

    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
