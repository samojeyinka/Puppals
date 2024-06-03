require "rails_helper"

RSpec.describe "Dog", type: :system do
  # context "when user registers and has created do profile" do
  #   # let!(:user_registration) { create(:user, :registered)}
  #   # let!(:dog) { create(:dog, name: "Puppy", user: user_registration) }
  #   let!(:user) { create(:user, :registered)}

  #   before do
  #     login_as(user, scope: :user)
  #     visit profile_path
  #   end
  #   it "creates user profile" do
  #     expect(page).to have_content("This is user profile.")
  #   end
  # end

  context "when user registers" do
    fit "creates user_profile" do
      visit "/"

      click_on "Register"

      fill_in "Email", with: "oliv1@gmail.com"
      fill_in "user_password", with: "123456"
      fill_in "user_password_confirmation", with: "123456"

      click_on "Sign up"

      expect(page).to have_content("Tell us about your pet")

      fill_in "dog[name]", with: "dogy"
      fill_in "dog[breed]", with: "akita"

      within('#gender') do
        expect(page).to have_selector('label', text: 'Gender*')
        expect(page).to have_css('.ss-main', visible: true)
        find('.ss-main', wait: 10).click
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

      fill_in "dog[bio]", with: "A good hygiene dog"

      attach_file('dog[photo_1]', 'app/assets/images/images.jpg', visible: false)

      click_on "Continue"

      expect(page).to have_content("This is user profile")
      fill_in "profile[first_name]", with: "Scoal"
      fill_in "profile[last_name]", with: "Scoalee"
      fill_in "profile[bio]", with: "I am tall and upright"

      within('#country') do
        expect(page).to have_selector('label', text: 'Country*')
        find('div.ss-main').click
      end
      find('.ss-list', text: 'Angola').click

      fill_in "profile[city]", with: "Copenhagen"
      attach_file('profile[photo]', 'app/assets/images/images.jpg', visible: false)

      click_on "Continue"
      expect(page).to have_content("Your profile oliv1@gmail.com")
    end

    it "creates dog profile" do
      visit "/"

      click_on "Register"

      fill_in "Email", with: "oliv1@gmail.com"
      fill_in "user_password", with: "123456"
      fill_in "user_password_confirmation", with: "123456"

      click_on "Sign up"

      expect(page).to have_content("Tell us about your pet")

      fill_in "dog[name]", with: "dogy"
      fill_in "dog[breed]", with: "akita"

      within('#gender') do
        expect(page).to have_selector('label', text: 'Gender*')
        expect(page).to have_css('.ss-main', visible: true)
        find('.ss-main', wait: 10).click
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

      fill_in "dog[bio]", with: "A good hygiene dog"

      attach_file('dog[photo_1]', 'app/assets/images/images.jpg', visible: false)

      click_on "Continue"
      expect(page).to have_content("This is user profile")
    end
  end

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
