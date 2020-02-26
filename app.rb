require 'sinatra/base'

class KitehManager < Sinatra::Base
  get '/' do
    erb :'pictures/index'
  end
end
