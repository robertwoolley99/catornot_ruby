require 'json'
require 'httparty'

class Picture
  attr_reader :url_to_retrieve
  def initialize
    @api_key = '5727ceed-e2bd-41e9-b30a-b3534b5fefdd'
  end

  def get_random_pic
    @url_to_retrieve = ''
    response = HTTParty.get('http://api.thecatapi.com/v1/images/search', \
    :headers => { 'x-api-key' => @api_key })
    json_file = JSON.parse(response.body)
    output = json_file[0]
    @url_to_retrieve = output["url"]
    puts @url_to_retrieve
  end
end
