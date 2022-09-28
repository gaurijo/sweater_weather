class HourlyWeather
  attr_reader :time, :temperature, :conditions, :icon, :all_hours_weather
  def initialize(data)
    @time = Time.at(data[:dt]) #refactor later
    @temperature = data[:temp]
    @conditions = data[:weather].first[:description]
    @icon = data[:weather].first[:icon]
    # require 'pry'; binding.pry 
  end
end