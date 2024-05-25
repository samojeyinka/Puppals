class SessionsController < Devise::SessionsController

  def after_sign_in_path_for(resource)
    "/user_profiles/#{current_user.profile.id}"
  end
end
