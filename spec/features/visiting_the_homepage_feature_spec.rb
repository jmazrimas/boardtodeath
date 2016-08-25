require 'rails_helper'

feature "visiting the homepage" do
  scenario "The user sees a list of all board games entered in the current database" do

    User.create(username: "newuser", email: "new@user.com", password: "password")

    game = Game.create!(title: "TestGame", user: User.last, description: "TestGameDescription")

    visit "/"

    within(".games-index") do
      expect(page).to have_content game.title
    end
  end

end
