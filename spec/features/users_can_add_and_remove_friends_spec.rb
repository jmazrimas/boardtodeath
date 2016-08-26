
require 'rails_helper'

feature "users can add, accept and remove friends" do

  given(:user1) { User.create(username: "first_user", email: "new1@user.com", password: "password") }
  given(:user2) { User.create(username: "second_user", email: "new2@user.com", password: "password") }

  scenario "user signed in and requests friend" do
    visit "/sessions/new"

    page.fill_in 'Email', with: user1.email
    page.fill_in 'Password', with: user1.password

    click_button 'Log in'

    visit "/users/#{user2.id}"

    click_button 'Request Friend'

    expect(page).to have_button 'Rescind Request'

    visit "/sessions/new"

    page.fill_in 'Email', with: user2.email
    page.fill_in 'Password', with: user2.password

    click_button 'Log in'

    visit "/users/#{user2.id}"

    within(".friend-requests") do
      expect(page).to have_content user1.username
    end

    click_button 'Accept'

    within("ul") do
      expect(page).to have_content user1.username
    end

    visit "/users/#{user1.id}"

    click_button 'Remove Friend'

    visit "/users/#{user2.id}"

    within("ul") do
      expect(page).to_not have_content user1.username
    end



  end


end
