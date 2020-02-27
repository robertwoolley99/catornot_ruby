require 'json'

class Vote
  attr_reader :json
  def initialize(votingcatornot, imageid)
    vote_score = 0
    vote_score = 1 if votingcatornot == 'cat'
    hash = { image_id: imageid, value: vote_score }
    p hash
    @json = hash.to_json
    p @json
  end
end
