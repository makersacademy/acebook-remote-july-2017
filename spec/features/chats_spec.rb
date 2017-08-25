RSpec.feature "Chats" do
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
    create_a_chat
    expect(page).to have_content "You are chatting with Barney"
  end

  it "allows a user to send a message within a chat" do
    create_a_chat
    send_a_message
    expect(page).to have_content "Alice: Hello Barney"
  end

  it "allows the other user to respond" do
    create_a_chat
    send_a_message
    click_link 'Logout'
    sign_in
    create_a_chat
    send_a_message(message: "Hello Alice!")
    expect(page).to have_content "Alice: Hello Barney"
    expect(page).to have_content "Barney: Hello Alice!"
  end

end
