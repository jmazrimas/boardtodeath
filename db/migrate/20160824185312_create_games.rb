class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :user_id
      t.text :description
      t.string :age_range
      t.string :num_players
      t.string :play_time

      t.timestamps
    end
  end
end
