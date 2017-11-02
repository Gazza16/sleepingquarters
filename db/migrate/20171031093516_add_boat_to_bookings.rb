class AddBoatToBookings < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookings, :boat, foreign_key: true
  end
end
