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
end
