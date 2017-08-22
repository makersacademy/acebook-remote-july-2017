feature 'Album' do
  it 'can create an album' do
    visit 'albums/new'
    click_button 'Save Album'
    expect(Album.count).to eq 1
  end
end
