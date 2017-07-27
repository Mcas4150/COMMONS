class DropRevieweventsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :reviewevents
  end
end
