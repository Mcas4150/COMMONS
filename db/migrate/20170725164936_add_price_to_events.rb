class AddPriceToEvents < ActiveRecord::Migration[5.0]
  def change
    add_monetize :events, :price, currency: { present: false }
    add_column :events, :confirmation, :boolean
  end
end
