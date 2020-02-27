require 'sinatra/base'
require './lib/picture'
require './lib/vote'

class KittehManager < Sinatra::Base
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
  redirect '/vote/cast'
end

get '/vote/cast' do
  url = Picture.new
  url.show_random_pic
  @source = url.url_link
  erb :'vote/cast'
end


end
