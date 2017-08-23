RSpec.feature "Chats" do

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

  def sign_in(email: 'barney@barney.com',
              password: '456789')
    visit '/users/sign_in'
    fill_in "user_email", with: email
    fill_in "user_password", with: password
    click_button 'Log in'
  end

  before do
    sign_up
    click_link 'Logout'
    sign_up(first_name: 'Alice',
                last_name: 'Test',
                email: 'alice@alice.com',
                password: '456789',
                password_confirmation: '456789')
  end

  it "allows a user to create a new chat" do
    visit 'chats/new'
    fill_in "chat[email]", with: "barney@barney.com"
    click_button "Save Chat"
    expect(page).to have_content "You are chatting with Barney"
  end

  it "allows a user to send a message within a chat" do
    visit 'chats/new'
    fill_in "chat[email]", with: "barney@barney.com"
    click_button "Save Chat"
    fill_in "message[body]", with: "Hello Barney"
    click_button "Create Message"
    p page
    expect(page).to have_content "You are chatting with Barney"
    expect(page).to have_content "Alice: Hello Barney"
  end

end
