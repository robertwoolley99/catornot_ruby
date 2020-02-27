require 'vote.rb'
require 'json'

describe Vote do
  it 'creates an expected JSON voting object using photo id' do
    test_vote = Vote.new('cat', 'kitty1234')
    parsed_body = JSON.parse(test_vote.json)
    expect(parsed_body['image_id']).to eq('kitty1234')
  end
  it 'creates an expected JSON voting object using voting intention' do
    test_vote = Vote.new('cat', 'kitty1234')
    parsed_body = JSON.parse(test_vote.json)
    expect(parsed_body['value']).to eq(1)
  end
end
