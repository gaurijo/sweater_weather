class Api::V1::LandingController < ApplicationController 
  def forecast 
    loc = LocationFacade.find_location(params[:location])

    weather = WeatherFacade.get_weather(loc.first, loc.last)
    
    render json: WeatherSerializer.new(weather).response #status: :created
    # require 'pry'; binding.pry 
  end
end