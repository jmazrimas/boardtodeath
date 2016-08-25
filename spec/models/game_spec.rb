require 'rails_helper'

RSpec.describe Game, type: :model do
    let(:game) { Game.create(title: "Monopoly", user_id: 1, description: "Classic American board game.", age_range: "All Ages", num_players: "2-8", play_time: "30 min")}

    it "has a title" do
      expect(game.title).to eq "Monopoly"
    end

    it "has a user id" do
      expect(game.user_id).to eq 1
    end

    it "has a game description" do
      expect(game.description).to eq "Classic American board game."
    end

    it "has an age range" do
      expect(game.age_range).to eq "All Ages"
    end

    it "has a number of players" do
      expect(game.num_players).to eq "2-8"
    end

    it "has an estimated play time" do
      expect(game.play_time).to eq "30 min"
    end


end



