class AddAddressToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :address, :string
    change_column(:spaces, :latitude, :float)
    change_column(:spaces, :longitude, :float)
  end
end
