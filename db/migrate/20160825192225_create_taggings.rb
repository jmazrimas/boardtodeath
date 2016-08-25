class CreateTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
      t.integer  :game_id
      t.integer  :tag_id

      t.timestamps(null: false)
    end
  end
end
