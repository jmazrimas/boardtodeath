require 'rails_helper'

feature "user can vote on games" do
    scenario "user votes up and down" do

        email = "new@user.com"
        username = "newuser"
        User.create(username: username, email: email, password: "password")
        Game.create!(title: "TestGame", user: User.last, description: "TestGameDescription")

        visit "/sessions/new"
        page.fill_in 'Email', :with => email
        page.fill_in 'Password', :with => 'password'

        click_button 'Log in'

        expect(page).to have_content "#{username.capitalize}"

        page.first(".upvote-button").click

        within('.vote-total') do
            expect(page).to have_content "1"
        end

        page.first(".downvote-button").click

        within('.vote-total') do
            expect(page).to have_content "0"
        end

        page.first(".downvote-button").click

        within('.vote-total') do
            expect(page).to have_content "-1"
        end

    end

end
