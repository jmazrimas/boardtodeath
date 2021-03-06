
require 'rails_helper'

feature "user can register" do
  scenario "user fills out registration" do

    visit "/users/new"

    username = Faker::Internet.user_name
    email = Faker::Internet.email

    page.fill_in 'user[username]', :with => username
    page.fill_in 'user[email]', :with => email
    page.fill_in 'user[password]', :with => 'password'
    page.fill_in 'user[password_confirmation]', :with => 'password'


    click_button 'Sign up'
    #   click_link("Show")

    within('nav') do
        expect(page).to have_content "#{username.capitalize}"
    end


  end

  scenario "the user can sign in" do
    username = Faker::Internet.user_name
    email = Faker::Internet.email
    User.create(username: username, email: email, password: "password")

    visit "/sessions/new"

    page.fill_in 'Email', :with => email
    page.fill_in 'Password', :with => 'password'

    click_button 'Log in'

    within('nav') do
        expect(page).to have_content "#{username.capitalize}"
    end

    click_on 'Log Out'

    within('nav') do
        expect(page).to have_content "Log In"
    end

  end
end
