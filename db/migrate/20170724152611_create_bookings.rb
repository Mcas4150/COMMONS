class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :state
      t.string :spaces_sku
      t.monetize :amount, currency: { present: false }
      t.json :payment

      t.timestamps
    end
  end
end
