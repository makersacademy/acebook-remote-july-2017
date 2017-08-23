require 'rails_helper'

RSpec.describe Chat, type: :model do
  subject(:chat) { described_class.new }
  let(:prior_chat) { described_class.new }

  it "validates the uniqueness of a chat between two users" do
    prior_chat.sender_id = 1
    prior_chat.recipient_id = 2
    prior_chat.save
    chat.sender_id = 1
    chat.recipient_id = 2
    expect(chat).to_not be_valid
  end
end
