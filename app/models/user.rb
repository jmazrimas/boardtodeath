class User < ApplicationRecord

  validates :email, uniqueness: { case_sensitive: false }
  validates :username, uniqueness: { case_sensitive: false }

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

  def friends_with?(other_user)
    self.friends.include?(other_user) && other_user.friends.include?(self)
  end

  def unanswered_request?(friend)
    request = Friendship.find_by(user: self, friend: friend)
    request && !confirmed_friends.include?(friend)
  end

  def friend_requests
    Friendship.friend_requests(self)
  end

  def confirmed_friends
    Friendship.friends(self)
  end

  has_many :comments

end
