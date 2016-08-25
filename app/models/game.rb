class Game < ApplicationRecord

  belongs_to :user

  has_many :ownerships, foreign_key: :owned_game_id
  has_many :owners, through: :ownerships

end
