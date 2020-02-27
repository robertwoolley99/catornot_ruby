require 'json'
require 'httparty'

class Vote
  attr_reader :json
  def initialize(votingcatornot, imageid)
    vote_score = 0
    vote_score = 1 if votingcatornot == 'cat'
    hash = { image_id: imageid, value: vote_score }
    @json = hash.to_json
  end

  def cast
    api_key = ENV['CAT_API']
    response = HTTParty.post('https://api.thecatapi.com/v1/votes', \
                             headers: { 'x-api-key' => api_key, \
                                        'Content-Type' =>
                                        'application/json' }, \
                             body: @json)
    return 'PROBLEM' unless response.code == 200

    'OK'
  end
end
