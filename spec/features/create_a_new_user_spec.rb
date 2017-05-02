require 'rails_helper'

feature 'Creating a new user' do
  background do
    visit '/'
    click_link 'Register'
    # Click the 'Register' link
  end
  scenario 'can create a new user via the index page' do
    # Fill in the 'User name' field with ’sxyrailsdev'
    fill_in 'User name', with: 'sxyrailsdev'
    # Fill in the 'Email' field with 'sxyrailsdev@myspace.com'
    fill_in 'Email', with: 'sxyrailsdev@myspace.com'
    # Fill in the 'Password' field with 'supersecret'
    fill_in 'Password', with: 'supersecret'
    # Fill in the 'Password confirmation' field with 'supersecret'
    fill_in 'Password confirmation', with: 'supersecret'
    # Click the 'Sign up' button
    click_button 'Sign up'
    # Expect the page to have the message 'Welcome! You have signed up successfully.'
    expect(page).to have_content("Welcome! You have signed up successfully.")
   end
end
