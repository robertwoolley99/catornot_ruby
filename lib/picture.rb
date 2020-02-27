# frozen_string_literal: true

require 'json'
require 'httparty'

class Picture
  attr_reader :url_to_retrieve
  def initialize
    @api_key = ENV['CAT_API']
  end

  def show_random_pic
    response = HTTParty.get('http://api.thecatapi.com/v1/images/search', \
    :headers => { 'x-api-key' => @api_key })
    json_file = JSON.parse(response.body)
    output = json_file[0]
    @url_to_retrieve = output['url']
    @@unique_id = output['id']
    @@url_to_render = @url_to_retrieve
  end

  def api_key
    @api_key
  end

  def url_link
    @@url_to_render
  end
end
