class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :number_of_guest
      t.boolean :acceptance
      t.date :check_in_date
      t.date :checkout_date

      t.references :island, foreign_key: true
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
