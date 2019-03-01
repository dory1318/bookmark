feature 'Update bookmark' do
  scenario 'I want to make changes in existing bookmark' do
    bookmark = Bookmark.create(url: 'http://www.yahoo.com', title: 'Yahoo')
    visit('/bookmarks')
    expect(page).to have_link('Yahoo', href: 'http://www.yahoo.com')

    first('.bookmark').click_button 'Edit'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

    fill_in('url', with: 'http://www.google.com')
    fill_in('title', with: 'Google')
    click_button('Save changes')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Yahoo', href: 'http://www.yahoo.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end
