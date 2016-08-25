class Game < ApplicationRecord

  belongs_to :user
  has_many :votes

  has_many :ownerships, foreign_key: :owned_game_id
  has_many :owners, through: :ownerships

  has_many :comments

  has_many :taggings
  has_many :tags, through: :taggings

  def vote_total
    self.votes.sum(:value)
  end

end
