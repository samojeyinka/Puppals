require "rails_helper"

RSpec.describe "Dog", type: :system do
  let(:user) { create(:user)}

  context "when user registers/logins" do
    it "creates dog profile" do
      sign_in(user)
      visit "/dogs/new"

      expect(page).to have_content("Tell us about your pet")
    end
  end
end