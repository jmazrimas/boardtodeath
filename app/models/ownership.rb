class Ownership < ApplicationRecord
  belongs_to :owner, class_name: :User
  belongs_to :owned_game, class_name: :Game


end
