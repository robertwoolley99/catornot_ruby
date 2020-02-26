require 'picture.rb'


describe Picture do
  it 'retrieves a URL from catapi' do
    output = Picture.new
    output.get_random_pic
    expect(output.url_to_retrieve).to include('catapi')
  end

end
