require 'sinatra/base'
require './lib/bookmarks'

class BookmarkMgr < Sinatra::Base

  get '/' do
    erb:index
  end

  get '/bookmarks' do
    Bookmarks.add_bookmarks(url: params[:bookmark])
    erb :bookmarks
  end

  run! if app_file == $0

end
