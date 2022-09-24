class WeatherService 
  def self.conn
    Faraday.new("https://api.openweathermap.org/data/2.5/") do |faraday|
      faraday.params['appid'] = ENV['openweather_api_key']
    end
  end

  def self.get_weather(lat, long)
    response = conn.get("onecall?lat=#{lat}&lon=#{long}&appid=#{ENV["openweather_api_key"]}&units=imperial")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end