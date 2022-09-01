class ChangePriceToBeIntegerInIslands < ActiveRecord::Migration[7.0]
  def change
    change_column :islands, :price, :integer
  end
end
