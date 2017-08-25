module ChatHelpers
  def create_a_chat
    visit 'chats'
    page.first(:button, "Begin chatting").click
  end

  def send_a_message(message: "Hello Barney")
    fill_in "message[body]", with: message
    click_button "Send message"
  end
end
