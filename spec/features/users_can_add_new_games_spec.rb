
require 'rails_helper'

feature "user can add new games" do

  scenario "user signs in and adds game" do
    email = "new@user.com"
    username = "newuser"
    User.create(username: username, email: email, password: "password")

    visit "/sessions/new"

    page.fill_in 'Email', :with => email
    page.fill_in 'Password', :with => 'password'

    click_button 'Log in'


    expect(page).to have_content "#{username}"

    page.fill_in 'Game Name', :with => "New Game Title"

    click_on 'Add Game'

    expect(page).to have_content "New Game Title"

  end

    scenario "user can't add game if not signed in" do

    visit '/'

    page.fill_in 'Game Name', :with => "New Game Title"

    click_on 'Add Game'

    # page.should_not have_content "New Game Title"

    within('form') do
        expect(page).to have_content "Password"
    end

  end


end
