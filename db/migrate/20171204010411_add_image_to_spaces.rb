class AddImageToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :image, :string
  end
end
