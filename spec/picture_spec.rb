require 'picture.rb'


describe Picture do
  it 'retrieves a URL from catapi' do
    test_case = Picture.new
    test_case.show_random_pic
    expect(test_case.url_to_retrieve).to include('catapi')
  end
  it 'can retrieve a class variable' do
    test_case = Picture.new
    test_case.show_random_pic
    another_test = Picture.new
    sample_to_test = another_test.url_link
    expect(sample_to_test).to include('catapi')
  end
end
