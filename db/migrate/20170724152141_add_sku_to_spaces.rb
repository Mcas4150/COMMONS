class AddSkuToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :sku, :string
  end
end
