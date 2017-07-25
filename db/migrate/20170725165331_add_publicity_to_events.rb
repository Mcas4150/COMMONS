class AddPublicityToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :publicity, :string
  end
end
