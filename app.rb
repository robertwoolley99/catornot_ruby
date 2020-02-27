require 'sinatra/base'
require './lib/picture'
require './lib/vote'

class KitehManager < Sinatra::Base
  get '/' do
    url = Picture.new
    url.show_random_pic
    @source = url.url_link

    erb :'pictures/index'
  end

post '/vote' do
  vote = 'not'
  vote = 'cat' if params[:play] == 'Cat'
  url = Picture.new
  vote = Vote.new(vote, url.url_link)
  vote.cast
end

end
