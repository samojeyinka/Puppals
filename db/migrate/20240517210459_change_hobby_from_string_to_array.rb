class ChangeHobbyFromStringToArray < ActiveRecord::Migration[7.1]
  def up
    change_column :dogs, :hobby, :text, array: true, default: [], using: "(string_to_array(hobby, ','))"
  end

  def down
    change_column :dogs, :hobby, :string, array: false, default: nil, using: "(array_to_string(hobby, ','))"
  end
end
