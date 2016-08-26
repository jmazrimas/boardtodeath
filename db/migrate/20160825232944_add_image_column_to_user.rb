class AddImageColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatar, :string, default: 'https://pixabay.com/static/uploads/photo/2014/04/02/10/24/pimp-303718_960_720.png'
  end
end
