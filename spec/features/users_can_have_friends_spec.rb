require 'rails_helper'



RSpec.feature "Friends", type: :feature do
  scenario "Cna visit a friends page and add a friend" do
    visit "/friends/new"
    click_button "add friend"
    expect(page).to have_content("you and Shara")
  end
end
