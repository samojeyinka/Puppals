class RemoveAdressFromProfiles < ActiveRecord::Migration[7.1]
  def change
    remove_column :profiles, :address_1, :string
    remove_column :profiles, :address_2, :string
  end
end
