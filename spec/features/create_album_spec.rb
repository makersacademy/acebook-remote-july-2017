feature 'Album' do
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
end
