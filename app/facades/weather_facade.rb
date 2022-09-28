class WeatherFacade 
  def self.get_weather(lat, long)
    json = WeatherService.get_forecast(lat, long)

    weather = Weather.new(json[:current]) #weather = array of current weather data
    daily_weather = []
    hourly_weather = []

    all_hours_weather = []
    all_day_weather = []

    json[:daily].first(5).map do |day|
      daily_weather << DailyWeather.new(day)
    end

    json[:daily].map do |day|
      all_day_weather << DailyWeather.new(day)
    end

    json[:hourly].first(8).map do |hr|
      hourly_weather << HourlyWeather.new(hr)
    end

    json[:hourly].map do |hr|
      all_hours_weather << HourlyWeather.new(hr)
    end

    [[weather], daily_weather, hourly_weather, all_hours_weather] 
    # require 'pry'; binding.pry 
  end
end