# frozen_string_literal: true

require "rails_helper"

RSpec.fdescribe DogComponent, type: :component do
  let!(:user) { create(:user) }
  let(:dog) { Dog.new }

  let(:dog_component) { described_class.new(dog: dog)}

  it "creates dog profile" do
    render_inline dog_component
  end
end
