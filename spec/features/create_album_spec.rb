RSpec.feature 'Album' do
  it 'can create an album' do
    visit 'albums/new'
    click_button 'Save Album'
    expect(Album.count).to eq 1
  end

  it 'has a title' do
    visit 'albums/new'
    fill_in 'Title', with: "Test"
    click_button 'Save Album'
    expect(page).to have_content "Test"
  end

  it 'has a description' do
    visit 'albums/new'
    fill_in 'Description', with: "Test1"
    click_button 'Save Album'
    expect(page).to have_content "Test1"
  end

  it "shows its date of creation" do
    visit 'albums/new'
    fill_in 'Title', with: "Test album"
    click_button 'Save Album'
    expect(page).to have_content "Created on #{Time.now.strftime('%d-%m-%Y')}"
  end

  it "shows the date it was last updated" do
    visit 'albums/new'
    fill_in 'Title', with: "Test album"
    click_button 'Save Album'
    expect(page).to have_content "Last updated on #{Time.now.strftime('%d-%m-%Y')}"
  end
end
