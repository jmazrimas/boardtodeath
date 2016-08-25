class User < ApplicationRecord

  has_secure_password

  has_many :games

  has_many :ownerships, foreign_key: :owner_id
  has_many :owned_games, through: :ownerships
end
