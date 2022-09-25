class WeatherSerializer
  def self.weather_serial(weather)
    {
          "current_weather":
          {
            "datetime": weather.current_weather[:datetime],
            "sunrise": weather.current_weather[:sunrise],
            "sunset": weather.current_weather[:sunset],
            "temperature": weather.current_weather[:temperature],
            "feels_like": weather.current_weather[:feels_like],
            "humidity": weather.current_weather[:humidity],
            "uvi": weather.current_weather[:uvi],
            "visibility": weather.current_weather[:visibility],
            "conditions": weather.current_weather[:condition],
            "icon": weather.current_weather[:icon]
          }
  end
end