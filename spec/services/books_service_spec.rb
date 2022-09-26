require 'rails_helper'

RSpec.describe BookService do 
  it "makes an api call and returns books based on a location search", :vcr do 

    response = BookService.get_books("Denver, CO")
    # require 'pry'; binding.pry 
    
    expect(response).to be_a(Hash)
    expect(response[:docs]).to be_a(Array)
    expect(response[:docs].first).to have_key(:title)
    expect(response[:docs].first[:title]).to be_a(String)
    expect(response[:docs].first[:isbn]).to be_a(Array)
    expect(response[:docs].first[:isbn][0]).to be_a(String)
    expect(response[:docs].first[:publisher]).to be_a(Array)
  end
end