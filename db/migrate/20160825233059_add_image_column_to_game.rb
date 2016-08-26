class AddImageColumnToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :image, :string, default: "https://openclipart.org/download/244704/Clovece_nezlob_se_board_game.svg"
  end
end
