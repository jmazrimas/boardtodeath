class User < ApplicationRecord

  has_secure_password

  has_many :games
  has_many :votes

  has_many :ownerships, foreign_key: :owner_id
  has_many :owned_games, through: :ownerships

  has_many :friendships
  has_many :friends, through: :friendships


  def self.are_friends?(user1, user2)
    user1.friends.include?(user2) && user2.friends.include?(user1)
  end

  def friend_requests
    Friendship.friend_requests(self)
  end

  def confirmed_friends
    Friendship.friends(self)
  end

end
