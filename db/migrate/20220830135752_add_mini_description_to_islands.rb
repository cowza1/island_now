class AddMiniDescriptionToIslands < ActiveRecord::Migration[7.0]
  def change
    add_column :islands, :mini_description, :string
  end
end
