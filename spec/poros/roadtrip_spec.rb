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

  it "renders an error if the route is impossible", :vcr do 
    origin = "Denver, CO"
    destination = "London, UK"
    weather = WeatherFacade.get_weather(51.50015, -0.12624)

    directions = RoadtripService.get_roadtrip(origin, destination)
    trip = Roadtrip.new(directions, weather)

    expect(trip).to be_a(Roadtrip)
    expect(trip.traveltime).to eq(nil)
    expect(trip.bad_route).to eq("Impossible route")
  end
end