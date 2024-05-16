# frozen_string_literal: true

class DogComponent < ViewComponent::Base

  def initialize(dog:)
    @dog = dog
  end

  attr_reader :dog
end
