class Api::V1::RoadtripsController < ApplicationController 
  def create

    from = params[:origin]
    to = params[:destination]

    roadtrip = RoadtripFacade.find_roadtrip(from, to)
    # loc = LocationFacade.find_location(params[:location])
    # weather = WeatherFacade.get_weather(loc.first, loc.last)
    # require 'pry'; binding.pry 

    render json: RoadtripSerializer.get_destination(from, to)
    # require 'pry'; binding.pry 
  end
end