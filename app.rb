require 'sinatra/base'
require './lib/bookmarks'

class BookmarkMgr < Sinatra::Base
  enable :sessions
  get '/' do
    erb:index
  end

  post '/view_bookmarks' do
    session[:bookmarks_array] = Bookmarks.all
    redirect '/bookmarks'
  end

  post '/add_bookmarks' do
    Bookmarks.add_bookmarks(url: params[:url], title: params[:title])
    session[:bookmarks_array] = Bookmarks.all
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks_array = session[:bookmarks_array]
    erb :bookmarks
  end

  run! if app_file == $0

end
