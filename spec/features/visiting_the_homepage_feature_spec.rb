require 'rails_helper'

feature "visiting the homepage" do
  scenario "The user sees a list of all board games entered in the current database" do
    game = Game.create!(title: "TestGame", user_id: 1, description: "TestGameDescription")

    visit "/"

    within(".games-index") do
      expect(page).to have_content game.title
    end
  end

end
