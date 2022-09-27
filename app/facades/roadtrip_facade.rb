class RoadtripFacade 
  def self.find_roadtrip(origin, destination)

    directions = RoadtripService.get_roadtrip(origin, destination)
    weather = WeatherFacade.get_weather(40.015831, -105.279266)
    weather_at_eta = weather.first.first.temperature
    conditions_at_eta = weather.first.first.conditions

    roadtrip = Roadtrip.new(directions, weather)
    # require 'pry'; binding.pry 
  end
end