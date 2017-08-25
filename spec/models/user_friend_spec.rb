require 'rails_helper'

RSpec.describe UserFriend, type: :model do
  subject(:user_friends) { described_class.new }
  let(:friend_request) { described_class.new }

  it "validates the uniqueness of a friend request between two users" do
    friend_request.user_id = 1
    friend_request.friend_id = 2
    friend_request.save
    user_friends.user_id = 1
    user_friends.friend_id = 2
    expect(user_friends).to_not be_valid
  end
end
