require 'sinatra/base'

class Manager < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/bookmarks" do
    erb :bookmarks
  end

end
