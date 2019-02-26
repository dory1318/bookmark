require 'sinatra/base'
require '/Users/Dori/Projects/bookmark/lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    # bookmarks.join
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
