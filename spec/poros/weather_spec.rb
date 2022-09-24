require 'rails_helper'

RSpec.describe Weather do 
  it "exists and has attributes" do 

    response = JSON.parse(File.read('spec/fixtures/current_weather.json'), symbolize_names: true)
    weather = Weather.new(response)
    
    expect(weather).to be_a(Weather)
    expect(weather.conditions).to eq("few clouds")
    expect(weather.id).to eq(nil)
    expect(weather.datetime).to eq("2022-09-24 12:38:54.000000000 -0700")
    expect(weather.temperature).to eq(79.43)
    expect(weather.feels_like).to eq(79.43)
    expect(weather.humidity).to eq(18)
    expect(weather.dew_point).to eq(32.27)
    expect(weather.uvi).to eq(6.18)
    expect(weather.visibility).to eq(10000)
  end
end