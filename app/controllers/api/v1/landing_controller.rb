class Api::V1::LandingController < ApplicationController 
  def index 
    location = LocationFacade.find_location(params:location)
    weather = WeatherFacade.get_weather(location[:lat], location[:long])
    render json: WeatherSerializer.new(weather), status: :created
  end
end