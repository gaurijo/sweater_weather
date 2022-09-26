class WeatherSerializer
##break into 3 different weather poros/serializers cuz too much data for one
  def initialize(weather_type)
    @weather = weather_type.first.first
    @daily_weather = weather_type.second 
    @hourly_weather = weather_type.third
  end
  def response
{
  "data": {
    "id": nil,
    "type": "forecast",
    "attributes": {
      "current_weather": {
        "datetime": @weather.datetime,
        "sunrise": @weather.sunrise,
        "sunset": @weather.sunset,
        "temp": @weather.temperature,
        "feels_like": @weather.feels_like,
        "humidity": @weather.humidity,
        "uvi": @weather.uvi,
        "visibility": @weather.visibility,
        "conditions": @weather.conditions,
        "icon": @weather.icon 
      },
      "daily_weather": [
        {
          "date": @daily_weather[0].datetime,
          "sunrise": @daily_weather[0].sunrise,
          "sunset": @daily_weather[0].sunset,
          "max_temp": @daily_weather[0].max_temp, 
          "min_temp": @daily_weather[0].min_temp, 
          "conditions": @daily_weather[0].conditions,
          "icon": @daily_weather[0].icon 
        },
        {
          "date": @daily_weather[1].datetime,
          "sunrise": @daily_weather[1].sunrise,
          "sunset": @daily_weather[1].sunset,
          "max_temp": @daily_weather[1].max_temp, 
          "min_temp": @daily_weather[1].min_temp, 
          "conditions": @daily_weather[1].conditions,
          "icon": @daily_weather[1].icon 
        },
        {
          "date": @daily_weather[2].datetime,
          "sunrise": @daily_weather[2].sunrise,
          "sunset": @daily_weather[2].sunset,
          "max_temp": @daily_weather[2].max_temp, 
          "min_temp": @daily_weather[2].min_temp, 
          "conditions": @daily_weather[2].conditions,
          "icon": @daily_weather[2].icon 
        },
        {
          "date": @daily_weather[3].datetime,
          "sunrise": @daily_weather[3].sunrise,
          "sunset": @daily_weather[3].sunset,
          "max_temp": @daily_weather[3].max_temp, 
          "min_temp": @daily_weather[3].min_temp, 
          "conditions": @daily_weather[3].conditions, 
          "icon": @daily_weather[3].icon 
        }, 
        {
          "date": @daily_weather[4].datetime,
          "sunrise": @daily_weather[4].sunrise,
          "sunset": @daily_weather[4].sunset,
          "max_temp": @daily_weather[4].max_temp, 
          "min_temp": @daily_weather[4].min_temp, 
          "conditions": @daily_weather[4].conditions, 
          "icon": @daily_weather[4].icon 
        }
      ],

      "hourly_weather": [
        {
          "time": @hourly_weather[0].time,
          "temp": @hourly_weather[0].temperature,
          "conditions": @hourly_weather[0].conditions,
          "icon": @hourly_weather[0].conditions
        },
        {
          "time": @hourly_weather[1].time,
          "temp": @hourly_weather[1].temperature,
          "conditions": @hourly_weather[1].conditions,
          "icon": @hourly_weather[1].conditions
        },
        {
          "time": @hourly_weather[2].time,
          "temp": @hourly_weather[2].temperature,
          "conditions": @hourly_weather[2].conditions,
          "icon": @hourly_weather[2].conditions
        },
        {
          "time": @hourly_weather[3].time,
          "temp": @hourly_weather[3].temperature,
          "conditions": @hourly_weather[3].conditions,
          "icon": @hourly_weather[3].conditions
        },
        {
          "time": @hourly_weather[4].time,
          "temp": @hourly_weather[4].temperature,
          "conditions": @hourly_weather[4].conditions,
          "icon": @hourly_weather[4].conditions
        },
        {
          "time": @hourly_weather[5].time,
          "temp": @hourly_weather[5].temperature,
          "conditions": @hourly_weather[5].conditions,
          "icon": @hourly_weather[5].conditions
        },
        {
          "time": @hourly_weather[6].time,
          "temp": @hourly_weather[6].temperature,
          "conditions": @hourly_weather[6].conditions,
          "icon": @hourly_weather[6].conditions
        },
        {
          "time": @hourly_weather[7].time,
          "temp": @hourly_weather[7].temperature,
          "conditions": @hourly_weather[7].conditions,
          "icon": @hourly_weather[7].conditions
        },
      ]
    }
  }
}
  end
end