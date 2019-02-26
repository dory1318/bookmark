require '/Users/Dori/Projects/bookmark/spec/spec_helper.rb'

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content 'http://www.gmail.com'
    expect(page).to have_content 'http://www.facebook.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
