require 'rails_helper'

describe Ownership do
  let(:u1) {User.create!(username: "Gardoman" , email: "gardo@email.com", password: "password")}
  let(:g01) {Game.create!(title: "Monopoly", user_id: u1.id, description: "Game about Money")}
  let(:ownership) {Ownership.create!(owner: u1, owned_game: g01)}

  describe "game ownership" do
    it "will show owner" do
      expect(ownership.owner).to eq(u1)
    end

    it "will show game owned" do
      expect(ownership.owned_game).to eq(g01)
    end

  end
end
