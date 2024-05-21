class DogsController < ApplicationController

  def new
    @dog = DogComponent.new(dog: Dog.new)
  end

  def create
    dog = current_user.build_dog(safe_params)

    if dog.save
      redirect_to new_profile_path
    else
      @dog = DogComponent.new(dog: @dog)
      render :new
    end
  end

  private

  def safe_params
    params.require(:dog).permit(:name, :breed, :gender, :size, :age, :bio, :photo_1, :photo_2, :photo_3, hobby: [])
  end
end
