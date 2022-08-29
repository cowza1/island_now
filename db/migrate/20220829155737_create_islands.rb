class CreateIslands < ActiveRecord::Migration[7.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :location
      t.boolean :availability
      t.decimal :price
      t.text :description

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
