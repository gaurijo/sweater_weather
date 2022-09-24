class Weather 
  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather,
              :type

  def initialize(attributes)
    @id = nil 
    @type = "forecast"
  end
end