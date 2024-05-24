require 'rails_helper'

RSpec.describe Dog, type: :model do


  context "association" do
    it { is_expected.to have_one_attached(:photo_1)}
    it { is_expected.to have_one_attached(:photo_2)}
    it { is_expected.to have_one_attached(:photo_3)}
  end

  context "validation" do
    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_presence_of(:breed) }
    it { expect(subject).to validate_presence_of(:gender) }
    it { expect(subject).to validate_presence_of(:size) }
    it { expect(subject).to validate_presence_of(:age) }
    it { expect(subject).to validate_presence_of(:bio) }
  end

  # context "when user login " do
  #   let(:user) { create(:user, email: "suyi@gmail.com")}
  #   let(:dog) { create(:dog, user: user, name: "dh") }
  #   let(:second_dog) { create(:dog, name: "Dog") }

  #   it "returns dog information upon creating dog profile" do
  #     expect(dog.name).to eq("Puppal")
  #     expect(dog.breed).to eq("Akita")
  #   end

  #   it "returns validation error for same user creating another dog profile" do
  #     expect { user.second_dog }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Email has already been taken")
  #   end
  # end
end
