require 'rails_helper'

RSpec.describe LocationService do 
  it "makes an api call and returns geolocation data" do 

    response = LocationService.get_location("San Francisco, CA")
    # require 'pry'; binding.pry 

    expect(response).to be_a(Hash)
    expect(response[:results]).to be_a(Array)
    expect(response[:results][0][:locations][0]).to have_key(:latLng)
    expect(response[:results][0][:locations][0][:latLng]).to be_a(Hash)
    expect(response[:results][0][:locations][0][:latLng][:lat]).to be_a(Float)
    expect(response[:results][0][:locations][0][:latLng][:lng]).to be_a(Float)
  end
end