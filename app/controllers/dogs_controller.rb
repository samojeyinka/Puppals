class DogsController < ApplicationController

  def new
  end

  def profile
    @dog = DogComponent.new(dog: Dog.new)
  end

  def create
    dog = current_user.build_dog(safe_params)
    if dog.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.replace(
              "dog-form",
              UserProfileComponent.new(profile: Profile.new)
            )
          ]
        end
      end
    else
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.replace(
              "dog-form",
              DogComponent.new(dog: dog, flash: "Dog name exist")
            ),
          ]
        end
      end
      # @dog = DogComponent.new(dog: dog, flash: "Dog name exist")
      # render :new
    end
  end

  private

  def safe_params
    params.require(:dog).permit(:name, :breed, :gender, :size, :age, :bio, :photo_1, :photo_2, :photo_3, hobby: [])
  end
end
# respond_to do |format|
#   format.turbo_stream do
#     render turbo_stream: [
#       turbo_stream.replace(
#         "summary-table",
#         SummaryTable.new(orders: all_orders(date_from_params))
#       ),
#       turbo_stream.replace(
#         "form",
#         NewOrderForm.new(order: Order.new(date: date_from_params))
#       )
#     ]
#   end