class Roadtrip 
  attr_reader :conditions_at_eta, :weather_at_eta, :directions, :traveltime, :travelhours
  def initialize(directions, weather)
    # @weather = weather 
    @weather_at_eta = weather[0].first.temperature
    @conditions_at_eta = weather[0].first.conditions
    # @directions = directions[:route][:boundingBox][:lr].values
    @traveltime = directions[:route][:formattedTime]
    @travelhours = directions[:route][:formattedTime].to_i
  end
end