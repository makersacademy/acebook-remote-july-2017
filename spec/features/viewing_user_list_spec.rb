require 'rails_helper'

def sign_up(first_name: 'Barney',
            last_name: 'Test',
            email: 'barney@barney.com',
            password: '456789',
            password_confirmation: '456789')
  visit '/users/sign_up'
  fill_in 'user_first_name', with: first_name
  fill_in 'user_last_name', with: last_name
  fill_in 'user_email' , with: email
  fill_in 'user_password', with: password
  fill_in 'user_password_confirmation', with: password_confirmation
  click_button 'Sign up'
end

RSpec.feature "User list", type: :feature do
  scenario "Can see an empty list" do
    visit "/user_list/index"
    expect(page).to be_present
  end

  scenario "Can see 1 user on the list" do
    sign_up
    visit "/user_list/index"
    expect(page).to have_content("Barney Test")
  end
end
