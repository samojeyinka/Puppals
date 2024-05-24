require "rails_helper"

RSpec.describe "Dog", type: :system do
  let(:user) { create(:user)}
  let(:dogs) { create(:dog, user: user) }


  # let(:user) { create(:user, email: "scoal@gmail.com") }
  # let!(:photo_1) { fixture_file_upload(file_fixture('images.jpg')) }
  # context "when user registers/logins" do
  #   it "creates dog profile" do
  #     sign_in(user)

  #     visit "/dogs/new"

  #     expect(page).to have_content("Tell us about your pet")
  #     # dogs.photo_1
  #     # fixture_file_upload(file_fixture('images.jpg'))

  #     fill_in "dog[name]", with: "dogy"
  #     fill_in "dog[breed]", with: "akita"

  #     within('#gender') do
  #       expect(page).to have_selector('label', text: 'Gender*')
  #       find('div.ss-main').click
  #     end
  #     find('.ss-list', text: 'Male').click

  #     within('#size') do
  #       expect(page).to have_selector('label', text: 'Size*')
  #       find('div.ss-main').click
  #     end
  #     find('.ss-list', text: 'Large').click

  #     within('#age') do
  #       expect(page).to have_selector('label', text: 'Age*')
  #       find('div.ss-main').click
  #     end
  #     find('.ss-list', text: '1 yr').click

  #     within('#hobby') do
  #       expect(page).to have_selector('label', text: 'Hobby*')
  #       find('div.ss-main').click
  #     end
  #     find('.ss-list', text: 'Hiking').click

  #     fill_in "dog[bio]", with: "A good hygiene dog"

  #     click_on "Continue"
  #     expect(page).to have_content("This is user profile")
  #   end
  # end

  # fcontext "when user create second dog profile" do
  #   let!(:dog) { create(:dog, user: user) }

  #   it "returns alert message" do
  #     sign_in(user)

  #     visit "/dogs/new"

  #     expect(page).to have_content("Tell us about your pet")

  #     fill_in "dog[name]", with: "dogy"
  #     fill_in "dog[breed]", with: "akita"

  #     within('#gender') do
  #       expect(page).to have_selector('label', text: 'Gender*')
  #       find('div.ss-main').click
  #     end
  #     find('.ss-list', text: 'Male').click

  #     within('#size') do
  #       expect(page).to have_selector('label', text: 'Size*')
  #       find('div.ss-main').click
  #     end
  #     find('.ss-list', text: 'Large').click

  #     within('#age') do
  #       expect(page).to have_selector('label', text: 'Age*')
  #       find('div.ss-main').click
  #     end
  #     find('.ss-list', text: '1 yr').click

  #     within('#hobby') do
  #       expect(page).to have_selector('label', text: 'Hobby*')
  #       find('div.ss-main').click
  #     end
  #     find('.ss-list', text: 'Hiking').click

  #     fill_in "dog[bio]", with: "A good hygiene dog"

  #     click_on "Continue"

  #     expect(page).to have_content("User can only have one dog")
  #   end
  # end
end
