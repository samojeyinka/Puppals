require "rails_helper"

RSpec.describe "User", type: :request do


  it "signs in the user redirect to the feeds page" do
    user = create(:user, email: "olive11@gmail.com")
    # sign_in user  #=> This is helper exists for user to sign in
    post user_session_path, params: {
      user: {
        email: "olive11@gmail.com",
        password: '123456'
      }
    }

    expect(response).to redirect_to(feeds_path)
    follow_redirect!

    expect(response).to render_template(:index)
    expect(response.body).to include("hello. This is feeds")
    expect(response.body).to include("You are signed in #{user.email}")
  end


  it "registers user and redirect to the dogs profile page" do
    post "/users", params: {
      user: {
        email: "olive1@gmail.com",
        password: '123456',
        password_confirmation: "123456"
      }
    }

    expect(response).to redirect_to(root_path)
    follow_redirect!

    expect(response).to redirect_to(profile_path)
    follow_redirect!
    expect(response.body).to include("Tell us about your pet")
  end
end