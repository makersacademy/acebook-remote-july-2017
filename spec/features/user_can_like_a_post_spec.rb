require 'rails_helper'

RSpec.feature "Likes", type: :feature do
  scenario "Can like a post" do
    make_a_post
    save_and_open_page
    click_link "Like"
    save_and_open_page
    expect(page.find('.posts-index-posts li:first-child')).to have_content("1")
  end
end
