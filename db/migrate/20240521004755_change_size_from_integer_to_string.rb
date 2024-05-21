class ChangeSizeFromIntegerToString < ActiveRecord::Migration[7.1]
  def change
    change_column :dogs, :size, :string
  end
end