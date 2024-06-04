class DogsController < ApplicationController
  before_action :check_existing_dog_profile, only: [:create]

  def new
    @dog = DogComponent.new(dog: Dog.new)
  end

  def profile
  end

  def create
    dog = current_user.build_dog(safe_params)
    if dog.save
      redirect_to new_user_profile_path
    else
      @dog = DogComponent.new(dog: dog)
      render :new
    end
  end

  private

  def check_existing_dog_profile
    if current_user.dog.present?
      respond_to do |format|
        format.html { redirect_to profile_path, alert: "You can only have one dog profile"}
        # format.turbo_stream
      end
    end
  end

  def safe_params
    params.require(:dog).permit(:name, :breed, :gender, :size, :age, :bio, :photo_1, :photo_2, :photo_3, hobby: [])
  end
end