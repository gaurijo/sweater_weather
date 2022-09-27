require 'rails_helper'

RSpec.describe Roadtrip do 
  it "exists and has attributes", :vcr do 

    origin = "Denver, CO"
    destination = "Estes Park, CO"
    weather = WeatherFacade.get_weather(40.015831, -105.279266)
  
    directions = RoadtripService.get_roadtrip(origin, destination)
    trip = Roadtrip.new(directions, weather)

    expect(trip).to be_a(Roadtrip)
    expect(trip.weather_at_eta).to_not be_a(String)
    expect(trip.travelhours).to eq(1)
  end
end