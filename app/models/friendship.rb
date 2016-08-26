class Friendship < ApplicationRecord

  belongs_to :user
  belongs_to :friend, class_name: 'User'

  def self.friend_requests(user)
    requests_to = self.where(friend: user)

    requests_to.map do |request|
      request.user if !user.friends.include?(request.user)
    end.compact

  end

  def self.friends(user)

    requests_to = self.where(friend: user)

    requests_to.map do |request|
      request.user if user.friends.include?(request.user)
    end.compact

  end

end
