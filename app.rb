require 'sinatra/base'
require './lib/bookmarks'

class BookmarkMgr < Sinatra::Base

  get '/' do
    erb:index
  end

  post '/add_bookmarks' do
    Bookmarks.add_bookmarks(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks_array = Bookmarks.all
    erb :bookmarks
  end

  run! if app_file == $0

end
