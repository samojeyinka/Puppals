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
      fill_in "gender", with: "male"
      fill_in "size", with: "large"
      # fill_in "age", with: 12
      # fill_in "bio", with: "A good hygiene dog"
    end
  end
end

# create_table "dogs", force: :cascade do |t|
#   t.string "name"
#   t.string "breed"
#   t.string "gender"
#   t.integer "size"
#   t.integer "age"
#   t.string "hobby"
#   t.text "bio"
#   t.bigint "user_id", null: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["user_id"], name: "index_dogs_on_user_id"
# end