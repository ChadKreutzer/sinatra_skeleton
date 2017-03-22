require 'sinatra/base'

class MyApp < Sinatra::Base
  configure :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end
  
  get "/" do
    erb :index
  end
end