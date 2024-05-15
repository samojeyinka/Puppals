require "rails_helper"

RSpec.describe "User", type: :request do
  let(:user) { create(:user) }

  it "signs in user" do
    sign_in user

    get "/feeds"
    expect(response).to have_http_status(:ok)
    expect(response).to render_template(:index)
  end
end