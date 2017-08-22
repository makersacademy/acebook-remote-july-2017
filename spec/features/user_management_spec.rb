require 'rails_helper'

def sign_up(email: 'barney@barney.com',
            password: '456789',
            password_confirmation: '456789')
  visit '/users/sign_up'
  fill_in 'user_email' , with: email
  fill_in 'user_password', with: password
  fill_in 'user_password_confirmation', with: password_confirmation
  click_button 'Sign up'
end

RSpec.feature "Signup", type: :feature do
  scenario "New user can sign up" do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(User.first.email).to eq 'barney@barney.com'
  end

  scenario 'matching password confirmation is required' do
    expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
  end

  scenario 'email matches conventions for email' do
    expect { sign_up(email: 'wrong') }.not_to change(User, :count)
  end
end
