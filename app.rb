require 'sinatra/base'
require 'sinatra/activerecord'
Dir["./models/*.rb"].each {|file| require file }

class MyApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  configure :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end
  
  get "/" do
    erb :index
  end
end