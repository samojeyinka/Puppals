require "rails_helper"

RSpec.describe "User", type: :system do
  let(:user) { create(:user)}

  it "sees login and sign up link on the homepage" do
    visit "/"

    expect(page).to have_content("The home page")
    expect(page).to have_link("Login")
    expect(page).to have_link("Register")
  end

  it "registers" do
    visit "/"

    click_on "Register"

    fill_in "Email", with: "oliv@gmail.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"

    click_on "Sign up"

    expect(page).to have_content("You are signed in oliv@gmail.com")
    expect(page).to have_link("Sign Out")
  end

  it "signs in" do
    visit "/"

    click_on "Login"

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    click_on "Log in"

    expect(page).to have_content("You are signed in oliv@gmail.com")
    expect(page).to have_link("Sign Out")
  end
end