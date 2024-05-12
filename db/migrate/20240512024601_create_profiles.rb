class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :country
      t.string :state
      t.string :address_1
      t.string :address_2
      t.timestamps
    end
  end
end
