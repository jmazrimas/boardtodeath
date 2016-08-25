class Ownership < ApplicationRecord
  belongs_to :user
  belongs_to :owned_games, class_name: :Game
end
