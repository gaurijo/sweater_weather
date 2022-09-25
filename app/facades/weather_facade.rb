class WeatherFacade 
  def self.get_weather(lat, long)
    WeatherService.get_forecast(lat, long)
  end
end