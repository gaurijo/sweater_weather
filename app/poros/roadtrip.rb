class Roadtrip 
  attr_reader :conditions_at_eta, :weather_at_eta, :traveltime, :travelhours, :bad_route
  def initialize(directions, weather)
    @traveltime = directions[:route][:formattedTime]
    @travelhours = directions[:route][:formattedTime].to_i
    @weather_at_eta = weather[2].first.temperature
    @conditions_at_eta = weather[2].first.conditions
    @bad_route = "Impossible route"
    # require 'pry'; binding.pry 
  end
end
#refactor this

## right now this is hardcoded to give the hourly weather at 
## 2nd hour (1 hour of travel btwn Denver and Boulder)