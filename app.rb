require 'sinatra/base'
require './lib/bookmarks'

class BookmarkMgr < Sinatra::Base

  get '/' do
    erb:index
  end

  get '/bookmarks' do
    @bookmark_instance = Bookmarks.new
    @string = @bookmark_instance.all
    erb :bookmarks
  end

  run! if app_file == $0

end
