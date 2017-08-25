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

  it "can be accessed from the front page" do
    visit "/"
    find("a[href='/chats']").click
    expect(page).to have_content("Inbox")
    expect(current_path).to eq("/chats")
  end

  it "shows all users available to chat with" do
    visit "/chats"
    expect(page).to have_content("Barney Test")
    expect(page).to have_content("Alice Test")
  end

  it "allows you to click a link by a user's name and start a chat with them" do
    visit "/chats"
    page.first(:button, "Begin chatting").click
    expect(page).to have_content("You are chatting with Barney")
  end
end
