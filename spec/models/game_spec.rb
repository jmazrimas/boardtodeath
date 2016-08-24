require 'rails_helper'

RSpec.describe Game, type: :model do
    let(:game) { Game.create(title: "Monopoly", user_id: 1, description: "Classic American board game.")}

    it "has a title" do
      expect(game.title).to eq "Monopoly"
    end

    it "has a user id" do
      expect(game.user_id).to eq 1
    end

    it "has a game description" do
      expect(game.description).to eq "Classic American board game."
    end

end



