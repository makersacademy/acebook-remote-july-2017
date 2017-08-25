require 'rails_helper'

RSpec.feature "Groups", type: :feature do
  scenario "Can create a group" do
    visit "/groups/new"
    fill_in "Title", with: "Groupy name"
    fill_in "Description", with: "Group description"
    click_button "Create"
    expect(page).to have_content("Groupy name")
    expect(page).to have_content("Group description")
  end

  scenario "User can create a group" do
    sign_up
    visit "/groups/new"
    fill_in "Title", with: "Groupy name"
    fill_in "Description", with: "Group description"
    click_button "Create"
    expect(page).to have_content("Members: Barney Test")
  end
end
