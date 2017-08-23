require 'rails_helper'

RSpec.describe Message, type: :model do
  subject(:message) { described_class.new }

  it "is not valid without a body" do
    message.user_id = 1
    message.chat_id = 2
    message.body = nil
    expect(message).to_not be_valid
  end

  it "is not valid without a user id" do
    message.user_id = nil
    message.chat_id = 2
    message.body = "hello"
    expect(message).to_not be_valid
  end

  it "is not valid without a chat id" do
    message.user_id = 1
    message.chat_id = nil
    message.body = "hello"
    expect(message).to_not be_valid
  end
end
