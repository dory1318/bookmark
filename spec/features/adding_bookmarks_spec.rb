feature 'Adding bookmarks' do
  scenario 'it appears on the list of bookmarks' do
    visit '/bookmarks'
    fill_in :url, with: 'https://example.com'
    click_button 'Add'
    expect(page).to have_content 'https://example.com'
  end
end
