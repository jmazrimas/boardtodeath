class AddImageColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatar, :string, default: 'https://static.pexels.com/photos/136349/pexels-photo-136349.jpeg'
  end
end
