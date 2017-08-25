require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "POST /" do
    before do
      user = User.create(first_name: 'Barney',
                  last_name: 'Test',
                  email: 'barney@barney.com',
                  password: '456789',
                  password_confirmation: '456789')
      Post.create(message: "hello", user_id: user.id)
    end

    it "responds with 302" do
      post :create, params: { post_id: Post.find_by(message: "hello").id, comment: { text: "Hello, world!" } }
      expect(response).to have_http_status(302)
    end

    it "creates a comment" do
      post :create, params: { post_id: Post.find_by(message: "hello").id, comment: { text: "Hello, world!" } }
      expect(Comment.find_by(text: "Hello, world!")).to be_present
    end
  end
end
