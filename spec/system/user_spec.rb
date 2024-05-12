require "rails_helper"

RSpec.describe "User" do

  it "can see login and signup link on the homepage" do
    visit "/"

    expect(page).to have_content("The home page")
    expect(page).to have_link("Login")
    expect(page).to have_link("Register")
  end
end