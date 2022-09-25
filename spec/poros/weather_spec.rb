require 'rails_helper'

RSpec.describe Weather do 
  it "exists and has attributes" do 

    data = 
        {
          :dt=>1664080279,
          :sunrise=>1664023766,
          :sunset=>1664067263,
          :temp=>60.96,
          :feels_like=>58.41,
          :pressure=>1026,
          :humidity=>35,
          :dew_point=>33.15,
          :uvi=>0,
          :visibility=>10000,
          :weather=>[{
            :description=>"clear sky", 
            :icon=>"01n"
          }]
        }

    weather = Weather.new(data)

  expect(weather).to be_a(Weather)
  expect(weather.datetime).to eq("2022-09-24 21:31:19.000000000 -0700")
  expect(weather.sunrise).to eq("2022-09-24 05:49:26.000000000 -0700")
  expect(weather.sunset).to eq("2022-09-24 17:54:23.000000000 -0700") #refactor these later for more readability
  end
end