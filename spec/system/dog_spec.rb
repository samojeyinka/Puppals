require "rails_helper"

RSpec.describe "Dog", type: :system do
  let(:user) { create(:user)}

  context "when user registers/logins" do
    it "creates dog profile" do
      sign_in(user)
      visit "/dogs/new"

      expect(page).to have_content("Tell us about your pet")

      fill_in "name", with: "dogy"
      fill_in "breed", with: "akita"

      select "Male", from: "select_gender"
      expect(find_field("gender").value).to eq("Male")
      expect(find_field("select_gender").value).to eq("")

      select "Large", from: "select_size"
      expect(find_field("size").value).to eq("Large")
      expect(find_field("select_size").value).to eq("")

      select "12 yrs", from: "select_age"
      expect(find_field("age").value).to eq("12 yrs")
      expect(find_field("select_age").value).to eq("")

      select "Running and jogging", from: "select_hobby"
      expect(find_field("hobby").value).to eq("Running and jogging")
      expect(find_field("select_hobby").value).to eq("")

      fill_in "bio", with: "A good hygiene dog"

      click_on "Continue"
    end
  end
end
