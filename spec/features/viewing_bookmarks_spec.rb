require '/Users/Dori/Projects/bookmark/spec/spec_helper.rb'

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

# feature 'Viewing bookmarks' do
#   feature 'visiting the homepage' do
#     scenario 'the page title is visible' do
#       visit '/'
#       expect(page).to have_content 'Bookmark Manager'
#     end
# 	 end
# end
