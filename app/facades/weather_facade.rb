class WeatherFacade 
  def self.get_weather(lat, long)
    json = WeatherService.get_forecast(lat, long)
    weather = Weather.new(json[:current])

    daily_weather = []
    json[:daily][0..4].map do |day|
      daily_weather << DailyWeather.new(day)
    end

    hourly_weather = []
    json[:hourly][0..7].map do |hr|
      hourly_weather << HourlyWeather.new(hr)
    end

    [[weather], daily_weather, hourly_weather]
  end
end