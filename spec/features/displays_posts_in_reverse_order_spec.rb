require 'rails_helper'
require 'web_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "posts are displayed in reverse order" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end
end
