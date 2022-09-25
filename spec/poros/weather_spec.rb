require 'rails_helper'

RSpec.describe Weather do 
  it "exists and has attributes" do 

    weather = WeatherFacade.get_weather(39.73, -104.98)
    weather_poros = Weather.new(weather)

    expect(weather_poros).to be_a(Weather)
    expect(weather_poros.id).to eq(nil)
    expect(weather_poros.temperature).to be_a(Float)
    expect(weather_poros.datetime).to be_a(Time)
    expect(weather_poros.sunrise).to be_a(Time)
    expect(weather_poros.sunset).to be_a(Time)
    expect(weather_poros.feels_like).to be_a(Float)
    expect(weather_poros.humidity).to be_a(Integer)
    expect(weather_poros.uvi).to be_a(Float)
    expect(weather_poros.conditions).to be_a(String)
    expect(weather_poros.icon).to be_a(String)
  end
end