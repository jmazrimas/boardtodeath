require 'rails_helper'

describe Tag do
  game = Game.create(title: "Monopoly", user_id: 1, description: "Classic American board game.")

  let(:tag) { game.tags.create(name: 'test') }

  describe "A tag" do

    it "has a name" do
      expect(tag.name).to eq 'test'
    end

    it "has related games" do
      expect(tag.games[0].title).to eq "Monopoly"
    end

  end


end
