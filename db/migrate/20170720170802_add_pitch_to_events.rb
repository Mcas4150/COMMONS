class AddPitchToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :pitch, :string
  end
end
