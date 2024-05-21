class CreateDog < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name, null: false, unique: true
      t.string :breed, null: false
      t.string :gender, null: false
      t.integer :size, null: false
      t.integer :age, null: false
      t.string :hobby, null: false
      t.text :bio, null: false
      t.references :user, null: false, foreign_key: true
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
