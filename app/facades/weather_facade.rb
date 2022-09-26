class WeatherFacade 
  def self.get_weather(lat, long)
    json = WeatherService.get_forecast(lat, long)
    weather = Weather.new(json[:current])

    daily_weather = []
    json[:daily].first(5).map do |day|
      # require 'pry'; binding.pry 
      daily_weather << DailyWeather.new(day)
    end

    hourly_weather = []
    json[:hourly].first(8).map do |hr|
      hourly_weather << HourlyWeather.new(hr)
    end

    [[weather], daily_weather, hourly_weather] 
    # require 'pry'; binding.pry 
  end
end