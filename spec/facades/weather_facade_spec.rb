    require 'rails_helper'

    RSpec.describe WeatherFacade do 
      it 'returns an array of 5 day weather forecast' do 
        weather = WeatherFacade.get_weather(39.73, -104.98)
        expect(weather).to be_a(Array)
        expect(weather.first.first).to be_a(Weather)
        expect(weather.second[0]).to be_a(DailyWeather)
        expect(weather.third[0]).to be_a(HourlyWeather)
        expect(weather.second.count).to eq(5)
        expect(weather.third.count).to eq(8)
      end
    end