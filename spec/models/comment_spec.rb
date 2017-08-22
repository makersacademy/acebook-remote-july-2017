require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject(:comment) { described_class.new }

  it "is not valid without text" do
    comment.post_id = 1
    comment.text = nil
    expect(comment).to_not be_valid
  end

  it "is not valid if the text is shorter than two characters" do
    comment.post_id = 1
    comment.text = "!"
    expect(comment).to_not be_valid
  end

  it "is not valid without a post" do
    comment.post_id = nil
    comment.text = ":)"
    expect(comment).to_not be_valid
  end
end
