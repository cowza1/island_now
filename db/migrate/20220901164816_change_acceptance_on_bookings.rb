class ChangeAcceptanceOnBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :acceptance, :boolean, default: false
  end
end
