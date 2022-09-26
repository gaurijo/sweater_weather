    require 'rails_helper'

    RSpec.describe WeatherFacade do 
      xit 'returns a nested array of current weather data, 5 day weather forecast, and 8 hour forecast' do 
        weather = WeatherFacade.get_weather(39.73, -104.98)
        # require 'pry'; binding.pry 
        expect(weather).to be_a(Array)
        expect(weather.first[0]).to be_a(Weather)
        expect(weather.second[0]).to be_a(DailyWeather)
        expect(weather.third[0]).to be_a(HourlyWeather)
        expect(weather.length).to eq(3)
        expect(weather[1].length).to eq(5)
        expect(weather[2].length).to eq(8)
      end
    end