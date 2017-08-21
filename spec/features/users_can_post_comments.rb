require 'rails_helper'

RSpec.feature "Comments", type: :feature do
  scenario "Can submit comments on a post" do
    visit "/posts"
    click_link "Comments"
    fill_in "Text", with: "This post sucks"
    click_button "Create comment"
    expect(page).to have_content("This post sucks")
  end
end
