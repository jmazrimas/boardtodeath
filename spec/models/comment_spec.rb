require 'rails_helper'

RSpec.describe Comment, type: :model do
    let(:comment) { Comment.create(game_id: 1, user_id: 1, content: "Classic American board game.")}

    it "has content" do
      expect(comment.content).to eq "Classic American board game."
    end

    it "has a user_id" do
      expect(comment.user_id).to eq 1
    end

    it "has a game_id" do
      expect(comment.game_id).to eq 1
    end

end
