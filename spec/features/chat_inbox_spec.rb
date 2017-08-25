RSpec.feature "Chat Inbox" do
  before do
    sign_up
    click_link 'Logout'
    sign_up(first_name: 'Alice',
                last_name: 'Test',
                email: 'alice@alice.com',
                password: '456789',
                password_confirmation: '456789')
    create_a_chat
  end

  it "shows a user's current chats" do
    visit "/chats"
    expect(page).to have_content("Alice and Barney")
  end

  it "shows all users available to chat with" do
    visit "/chats"
    expect(page).to have_content("Barney Test")
    expect(page).to have_content("Alice Test")
  end
end
