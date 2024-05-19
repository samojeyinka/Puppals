require "rails_helper"

RSpec.describe "User", type: :request do
  let!(:user) { create(:user) }

  it "signs in user" do
    # sign_in user  => This is helper exists for user to sign in
    post  user_session_path, params: {
      user: {
        email: "oliv@gmail.com",
        password: '123456'
      }
    }

    expect(response).to redirect_to("/")
    follow_redirect!

    expect(response).to redirect_to(new_dog_path)
    follow_redirect!

    expect(response).to render_template(:new)
    expect(response.body).to include("Tell us about your pet")
  end
end