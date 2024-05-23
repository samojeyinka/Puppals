class AddUniqueIndexToDogsName < ActiveRecord::Migration[7.1]
  def change
    add_index :dogs, :name, unique: true
  end
end
