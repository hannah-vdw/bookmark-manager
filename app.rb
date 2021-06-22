require "sinatra/base"
require "sinatra/reloader"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  post '/add' do
    url = params[:url]
    Bookmark.add(url)
    redirect '/bookmarks'
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
