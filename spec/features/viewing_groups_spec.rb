require 'rails_helper'

RSpec.feature "Groups", type: :feature do
  before do
    sign_up
  end
  scenario "Can create a group" do
    visit "/groups/new"
    fill_in "Title", with: "Groupy name"
    fill_in "Description", with: "Group description"
    click_button "Create"
    expect(page).to have_content("Groupy name")
    expect(page).to have_content("Group description")
  end
end
