
require 'rails_helper'

feature "user can assign tags to games they create" do
  scenario "user creates a game with tags" do
    email = "new@user.com"
    username = "newuser"
    User.create(username: username, email: email, password: "password")

    visit "/sessions/new"

    page.fill_in 'Email', :with => email
    page.fill_in 'Password', :with => 'password'

    click_button 'Log in'

    visit "/"

    page.fill_in 'game[title]', :with => 'some test game'
    page.fill_in 'game[initial_tags]', :with => 'a test tag example'


    click_button 'Add Game'

    expect(page).to have_content 'some test game'

    click_link 'some test game'

    expect(page).to have_content 'a test tag example'

  end

end
