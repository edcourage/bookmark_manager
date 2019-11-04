require 'sinatra/base'
# require_relative ''

class BookmarkMgr < Sinatra::Base

  get '/' do
    erb:index
  end

  run! if app_file == $0

end
