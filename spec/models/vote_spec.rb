require 'rails_helper'

RSpec.describe Vote, type: :model do

  # let(:user) { User.create(username: 'test', email: 'test@user.com', password: 'password') }
  # let(:game) { Game.create(title: "Monopoly", user_id: 1, description: "Classic American board game.")}
  # let(:vote) { Vote.create(user: user, game: game) }

  describe "A vote" do
    username = Faker::Internet.user_name
    email = Faker::Internet.email
    user = User.create(username: username, email: email, password: "password")
    game = Game.create!(title: 'test game', description: 'this is a test game', user_id: user.id)
    vote = Vote.create(user: user, game: game, value: 1)

    it "has a user" do
      expect(vote.user.username).to eq username
    end

    it "has an game" do
      expect(vote.game.title).to eq 'test game'
    end
  end
end
