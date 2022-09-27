class RoadtripFacade 
  def self.find_roadtrip(origin, destination)

    directions = RoadtripService.get_roadtrip(origin, destination)
    lat = directions[:route][:boundingBox][:ul][:lat]
    long = directions[:route][:boundingBox][:ul][:lng]

    weather = WeatherFacade.get_weather(lat, long)
    roadtrip = Roadtrip.new(directions, weather)
  end
end