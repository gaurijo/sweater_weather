class Roadtrip 
  attr_reader :conditions_at_eta, :weather_at_eta, :traveltime, :travelhours
  def initialize(directions, weather)
    @weather_at_eta = weather[0].first.temperature
    @conditions_at_eta = weather[0].first.conditions
    @traveltime = directions[:route][:formattedTime]
    @travelhours = directions[:route][:formattedTime].to_i
  end
end