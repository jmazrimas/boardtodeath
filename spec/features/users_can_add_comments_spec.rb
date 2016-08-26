require 'rails_helper'

feature 'user can add comments on games' do

    username = Faker::Internet.user_name
    email = Faker::Internet.email

  user = User.create(username: username, email: email, password: "password")

  game = Game.create!(title: 'test game', description: 'this is a test game', user_id: user.id)

  scenario 'user logs in and comments on a game' do

    visit "/sessions/new"

    page.fill_in 'Email', :with => email
    page.fill_in 'Password', :with => 'password'

    click_button 'Log in'

    visit "/games/#{game.id}"

    click_link 'Add a Comment'

    expect(page).to have_content 'Write a Comment'

    page.fill_in 'comment[content]', :with => 'This is a comment'

    click_button 'Comment'

    expect(page).to have_content 'This is a comment'

  end

  scenario 'user does not see add comment button if not logged in' do

    visit "/games/#{game.id}"

    expect(page).not_to have_content 'Add a Comment'

  end

end
