require 'sinatra/base'
require '/Users/Dori/Projects/bookmark/lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = [
      'http://www.gmail.com',
      'http://www.facebook.com',
      'http://www.google.com'
    ]
    # bookmarks.join
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
