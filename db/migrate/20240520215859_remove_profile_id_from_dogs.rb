class RemoveProfileIdFromDogs < ActiveRecord::Migration[7.1]
  def change
    remove_column :dogs, :profile_id, :bigint
  end
end
