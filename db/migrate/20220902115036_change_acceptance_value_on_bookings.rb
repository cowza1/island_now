class ChangeAcceptanceValueOnBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :acceptance, :boolean, nill:false
  end
end
