class AddTagStringColumnToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :initial_tags, :string
  end
end
