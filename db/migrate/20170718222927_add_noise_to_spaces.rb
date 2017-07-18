class AddNoiseToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :noise, :string
  end
end
