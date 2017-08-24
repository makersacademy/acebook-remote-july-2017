require 'rails_helper'

RSpec.feature "Likes", type: :feature do
  scenario "Can like a post" do
    sign_up
    make_a_post
    click_link "Like"
    expect(page.find('.posts-index-posts li:first-child .posts-index-post-likes')).to have_content("1")
  end
end
