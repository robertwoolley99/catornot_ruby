require 'sinatra/base'
require './lib/picture'

class KitehManager < Sinatra::Base
  get '/' do
    url = Picture.new
    url.get_random_pic
    @source = url.url_link

    erb :'pictures/index'
  end
end
