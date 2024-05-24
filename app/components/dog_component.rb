# frozen_string_literal: true

class DogComponent < ViewComponent::Base
  include ApplicationHelper
  def initialize(dog:, flash: "")
    @dog = dog
    @flash = flash
  end

  def age_options
    options = [""]

    (0..19).each do |age|
      option = age == 0 ? "less than 1 year" : "#{age} #{'yr'.pluralize(age)}"
      options << option
    end
    options << "20 yrs"
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

  attr_reader :dog, :flash
end
