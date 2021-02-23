require 'sinatra/base'
require './lib/bookmark'

class Manager < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

end
