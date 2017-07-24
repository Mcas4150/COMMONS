class AddEventToBooking < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :event, foreign_key: true
  end
end
