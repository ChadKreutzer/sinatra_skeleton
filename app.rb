require 'sinatra/base'
require 'sinatra/reloader' if ENV['RACK_ENV'] == 'development'

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  get "/" do
    erb :index
  end
end