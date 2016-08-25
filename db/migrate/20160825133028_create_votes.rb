class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :game_id, null: false
      t.integer :user_id, null: false
      t.integer :value, null: false, default: 0

      t.timestamps
    end
  end
end
