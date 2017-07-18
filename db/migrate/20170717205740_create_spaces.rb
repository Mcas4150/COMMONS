class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :latitude
      t.integer :longitude
      t.string :category
      t.integer :capacity
      t.string :images
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
