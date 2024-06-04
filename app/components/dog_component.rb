# frozen_string_literal: true

class DogComponent < ViewComponent::Base
  include ApplicationHelper
  def initialize(dog:)
    @dog = dog
  end

  def age_options
    options = [""]

    (0..19).each do |age|
      option = age == 0 ? "less than 1 year" : "#{age} #{'yr'.pluralize(age)}"
      options << option
    end
    options << "20 yrs"
  end

  def name_error
    name_error = dog.errors.full_messages_for(:name)
    name_error.present? ? name_error.join : nil
  end

  def gender_error
    gender_error = dog.errors.full_messages_for(:gender)
    gender_error.present? ? gender_error.join : nil
  end

  def size_error
    size_error = dog.errors.full_messages_for(:size)
    size_error.present? ? size_error.join : nil
  end

  def hobby_error
    hobby_error = dog.errors.full_messages_for(:hobby)
    hobby_error.present? ? hobby_error.join : nil
  end

  def personality_error
    bio_error = dog.errors.full_messages_for(:bio)
    bio_error.present? ? bio_error.join : nil
  end

  def age_error
    age_error = dog.errors.full_messages_for(:age)
    age_error.present? ?  age_error.join : nil
  end

  def breed_error
    breed_error = dog.errors.full_messages_for(:breed)
    breed_error.present? ?  breed_error.join : nil
  end

  def photo_error
    photo_error = dog.errors.full_messages_for(:base)
    photo_error.present? ?  photo_error.join : nil
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
