require 'rails_helper'

RSpec.describe Weather do 
  it "exists and has attributes" do 
    weather = WeatherFacade.get_weather(39.73, -104.98)
    expect(weather).to be_a(Weather)
    expect(weather.id).to eq(nil)
    expect(weather.type).to eq("forecast")
  end
end