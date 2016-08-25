class Game < ApplicationRecord
  after_save :create_tags

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

  private

  def create_tags
    game = Game.find(self.id)
    tags_array = self.initial_tags.split(" ")
    tags_array.each do |tag|
      tag = Tag.find_or_create_by(name: tag)
      game.tags << tag
    end
  end

end
