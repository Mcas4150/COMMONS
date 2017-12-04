class AddDimensionsToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :dimensions, :integer
    add_column :spaces, :payment, :string
    add_column :spaces, :lighting, :string
    add_column :spaces, :audio, :string
    add_column :spaces, :video, :string
    add_column :spaces, :amenities, :string
    add_column :spaces, :restrooms, :boolean
    add_column :spaces, :cancellation, :string
    add_column :spaces, :features, :string
    add_column :spaces, :rentalpolicy, :string
    add_column :spaces, :smoking, :boolean
    add_column :spaces, :uses, :string
    add_column :spaces, :disciplines, :string
    add_column :spaces, :furniture, :string
    add_column :spaces, :personnel, :string
    add_column :spaces, :restrictions, :string
    add_column :spaces, :website, :string
  end
end
