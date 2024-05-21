# frozen_string_literal: true

class DogComponent < ViewComponent::Base
  include ApplicationHelper
  def initialize(dog:)
    @dog = dog
  end

  def age_options
    options = [""]

    (0..20).each do |age|
      option = age == 0 ? 0 : age
      options << option
    end
    options
  end

  def size
    ["Miniature", "Small", "Medium", "Large", "Very Large"]
  end

  def hobby
    [
      "Running and jogging",
      "Hiking",
      "Dancing",
      "Rally",
      "Swimming",
      "Dog park",
      "Fetch",
      "others"
    ]
  end
  # option = age == 0 ? "less than 1 year" : "#{age} #{'yr'.pluralize(age)}"

  attr_reader :dog
end
