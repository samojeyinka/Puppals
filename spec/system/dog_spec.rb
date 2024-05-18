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

      within('#gender') do
        expect(page).to have_selector('label', text: 'Gender*')
        find('div.ss-main').click
      end
      find('.ss-list', text: 'Male').click

      within('#size') do
        expect(page).to have_selector('label', text: 'Size*')
        find('div.ss-main').click
      end
      find('.ss-list', text: 'Large').click

      within('#age') do
        expect(page).to have_selector('label', text: 'Age*')
        find('div.ss-main').click
      end
      find('.ss-list', text: '1 yr').click

      within('#hobby') do
        expect(page).to have_selector('label', text: 'Hobby*')
        find('div.ss-main').click
      end
      find('.ss-list', text: 'Hiking').click

      fill_in "bio", with: "A good hygiene dog"

      click_on "Continue"
    end
  end
end
