class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
      t.integer :owned_game_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
