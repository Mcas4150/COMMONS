class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :datetime
      t.string :description
      t.boolean :public
      t.integer :admission
      t.references :space, foreign_key: true
      t.references :reviewevent, foreign_key: true

      t.timestamps
    end
  end
end
