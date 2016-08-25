require 'rails_helper'

feature 'user can add comments on games' do

  scenario 'user logs in and comments on a game' do

    email = "new@user.com"
    username = "newuser"
    User.create(username: username, email: email, password: "password")

    visit "/sessions/new"

    page.fill_in 'Email', :with => email
    page.fill_in 'Password', :with => 'password'

    click_button 'Log in'

    visit '/games/1'

    click_button 'Add a Comment'

    expect(page).to have_content 'Write a Comment'

    page.fill_in 'Write a Comment', :with => 'This is a comment'

    click_button 'Comment'

    expect(page).to have_content 'This is a comment'

  end

  scenario 'user does not see add comment button if not logged in' do

    visit '/games/1'

    page.should_not have_content('Add a Comment')

  end

end
