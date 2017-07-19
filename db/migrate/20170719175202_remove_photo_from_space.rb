class RemovePhotoFromSpace < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :photo, :string
  end
end
