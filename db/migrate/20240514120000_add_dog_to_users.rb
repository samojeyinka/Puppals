class AddDogToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :dog
  end
end
