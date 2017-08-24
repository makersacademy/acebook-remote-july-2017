require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "posts are displayed in reverse order with message and timestamp" do
    sign_up
    create_new_post
    create_new_post(message: "There is not enough time to do all the nothing we want to do")
    create_new_post(message: "Oooh! What does THAT button do?")
    expect(page.find('.posts-index-posts li:first-child')).to have_content("Oooh! What does THAT button do?")
    expect(page.find('.posts-index-posts li:first-child')).to have_content(Post.last.created_at.localtime.strftime('%d-%b-%Y %I:%M:%S %p'))
  end
end

def create_new_post(message: "Hello, world")
  visit "/posts"
  click_link "New post"
  fill_in "Message", with: message
  click_button "Submit"
end
