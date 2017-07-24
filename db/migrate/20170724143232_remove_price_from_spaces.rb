class RemovePriceFromSpaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :price, :integer
  end
end
