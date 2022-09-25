class Api::V1::LandingController < ApplicationController 
  def index 
    location = LocationFacade.find_location(params:location)
    weather = WeatherFacade.get_weather(location[:lat], location[:long])
    weather_poros = Weather.new(weather)
    render json: WeatherSerializer.weather_serial(weather), status: :created
  end
end