class WeatherFacade 
  def self.get_weather(lat, long)
    json = WeatherService.get_forecast(lat, long)

    weather = Weather.new(json[:current]) #weather = array of current weather data
    daily_weather = []
    hourly_weather = []

    json[:daily].first(5).map do |day|
      daily_weather << DailyWeather.new(day)
    end

    json[:hourly].first(8).map do |hr|
      hourly_weather << HourlyWeather.new(hr)
    end

    [[weather], daily_weather, hourly_weather] 
    # require 'pry'; binding.pry 
  end
end