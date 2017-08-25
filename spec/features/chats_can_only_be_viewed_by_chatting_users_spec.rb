RSpec.feature "Chats can only be viewed by chatting users" do

  def in_browser(name)
  old_session = Capybara.session_name

  Capybara.session_name = name
  yield

  Capybara.session_name = old_session
end

  it "is possible to have a chat" do
    in_browser(:one) do
        sign_up
        click_link 'Logout'
        sign_up(first_name: 'Alice',
              last_name: 'Test',
              email: 'alice@alice.com',
              password: '456789',
              password_confirmation: '456789')
    end

    in_browser(:two)do
      sign_up(first_name: 'Gina',
                last_name: 'Best',
                email: 'gina@gina.com',
                password: '456789',
                password_confirmation: '456789')
    end


    in_browser(:two) do
      create_a_chat
      expect(page).to have_content "You are chatting with Barney"
    end
  end



end
