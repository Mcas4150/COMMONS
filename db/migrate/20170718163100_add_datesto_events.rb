class AddDatestoEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :from, :date
    add_column :events, :to, :date
  end
end
