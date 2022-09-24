class WeatherFacade 
  def self.get_weather(lat, long)
    weather = WeatherService.get_forecast(lat, long)
    Weather.new(weather)    
  end
end