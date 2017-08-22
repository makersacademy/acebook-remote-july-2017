require 'rails_helper'

RSpec.feature "Comments", type: :feature do
  scenario "Can submit comments on a post" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_link "Comment"
    fill_in "Text", with: "This post sucks"
    click_button "Create"
    expect(page).to have_content("This post sucks")
  end
end
