require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "posts are displayed in reverse order with message and timestamp" do
    create_new_post
    create_new_post(message: "Aks says Makers Academy week 7 Acebook challenge is going crazy")
    create_new_post(message: "Eoin says I love to code everyday with my online friends")
    expect(page).to have_content(page_content(Post.all.reverse))
  end
end

def create_new_post(message: "Hello, world")
  visit "/posts"
  click_link "New post"
  fill_in "Message", with: message
  click_button "Submit"
end

def page_content(posts)
  page_content = ""
  posts.each do |post|
    page_content += "User Name" + " " + post.message + " " + post.created_at.strftime('%d-%b-%Y %I:%M:%S %p') + " "
  end
  page_content
end
