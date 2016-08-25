
require 'rails_helper'

feature "user can add and remove games from collection" do

  scenario "user signed in and adds game to collection" do
    email = "new@user.com"
    username = "newuser"
     u1 = User.create(username: username, email: email, password: "password")
     u2 = User.create(username: "username2", email: "email@email2", password: "password")
    Game.create(title: "Test game", description: "Test description", user: u2)
    visit "/sessions/new"

    page.fill_in 'Email', with: email
    page.fill_in 'Password', with: 'password'

    click_button 'Log in'
    click_on 'Home'
    # title = page.find('div.single-game a').text
    click_on 'Test game'
    click_button 'Add to Collection'
    expect(page).to have_content 'Test game'

  end

  scenario "user signed in and removes game from collection" do
    email = "new@user.com"
    username = "newuser"
     u1 = User.create(username: username, email: email, password: "password")
     u2 = User.create(username: "username2", email: "email@email2", password: "password")
     g1 = Game.create(title: "Test game", description: "Test description", user: u2)
    Ownership.create(owner: u1, owned_game: g1)
    visit "/sessions/new"

    page.fill_in 'Email', with: email
    page.fill_in 'Password', with: 'password'

    click_button 'Log in'
    click_on username.capitalize
    click_on 'Test game'
    click_button 'Remove from Collection'
    expect(page).to have_button "Add to Collection"
  end
end
