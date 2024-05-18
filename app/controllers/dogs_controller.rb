class DogsController < ApplicationController

  def new
    @dog = DogComponent.new(dog: Dog.new)
  end
end
