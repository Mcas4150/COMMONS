class CreateReviewevents < ActiveRecord::Migration[5.0]
  def change
    create_table :reviewevents do |t|
      t.string :content
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
