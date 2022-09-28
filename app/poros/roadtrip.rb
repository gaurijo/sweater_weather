class Roadtrip 
  attr_reader :weather, :conditions_at_eta, :weather_at_eta, :traveltime, :travelhours, :bad_route
  def initialize(directions, weather)
    @traveltime = directions[:route][:formattedTime]
    @travelhours = directions[:route][:formattedTime].to_i
    @all_hours_weather = weather[3]
    # @weather_at_eta = weather[2].first.temperature
    # @weather_at_eta = weather_at_eta
    @conditions_at_eta = weather[2].first.conditions
    @bad_route = "Impossible route"
  end
end
  # def weather_at_eta 
  #   @all_hours_weather[@travelhours - 1]
  # end
  # require 'pry'; binding.pry 

#refactor this

## right now this is hardcoded to give the hourly weather at 
## 2nd hour (1 hour of travel btwn Denver and Boulder)