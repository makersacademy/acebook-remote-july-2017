module ChatHelpers
  def create_a_chat(email: "barney@barney.com")
    visit 'chats/new'
    fill_in "chat[email]", with: email
    click_button "Start a chat"
  end

  def send_a_message(message: "Hello Barney")
    fill_in "message[body]", with: message
    click_button "Send message"
  end
end
