require 'rails_helper'

RSpec.describe RoadtripFacade do 
  it "returns geolocation data given an origin and destination", :vcr do 
    
    destination_hash = RoadtripService.get_roadtrip("Denver,CO", "Boulder,CO")

    expect(destination_hash).to be_a(Hash)
    expect(destination_hash).to have_key(:route)
    expect(destination_hash[:route]).to have_key(:formattedTime)
    expect(destination_hash[:route]).to have_key(:realTime)
    expect(destination_hash[:route]).to have_key(:legs)
    expect(destination_hash[:route]).to have_key(:boundingBox)
    expect(destination_hash[:route][:boundingBox]).to be_a(Hash)
    expect(destination_hash[:route][:boundingBox][:ul][:lat]).to be_a(Float)
    expect(destination_hash[:route][:boundingBox][:ul][:lng]).to be_a(Float)
  end
end

## NOTE: need to extract data that will get me a travel time based on distance of org and des