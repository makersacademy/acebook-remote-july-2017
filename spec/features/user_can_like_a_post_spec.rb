require 'rails_helper'

RSpec.feature "Likes", type: :feature do
  scenario "Can like a post" do
    make_a_post
    click_link "Like"
    expect(page.find('.posts-index-posts-likes')).to have_content("1")
  end
end
