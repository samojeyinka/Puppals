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