require 'rails_helper'

RSpec.describe Vote, type: :model do
  let(:vote) { FactoryGirl.create(:vote) }
  # let(:user) { User.create(username: 'test', email: 'test@user.com', password: 'password') }
  # let(:game) { Game.create(title: "Monopoly", user_id: 1, description: "Classic American board game.")}
  # let(:vote) { Vote.create(user: user, game: game) }

  describe "A vote" do
    it "has a user" do
      expect(vote.user.username).to eq 'testuser'
    end

    it "has an game" do
      expect(vote.game.title).to eq 'Monopoly'
    end
  end
end
