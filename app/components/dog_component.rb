# frozen_string_literal: true

class DogComponent < ViewComponent::Base

  def initialize(dog:)
    @dog = dog
  end

  def age_options
    options = [""]

    (0..19).each do |age|
      option = age == 0 ? "less than 1 year" : "#{age} #{'yr'.pluralize(age)}"
      options << option
    end
    options << "20+ yrs"
  end

  attr_reader :dog
end
