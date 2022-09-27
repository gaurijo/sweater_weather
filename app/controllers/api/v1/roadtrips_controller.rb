class Api::V1::RoadtripsController < ApplicationController 
  def create

    from = params[:origin]
    to = params[:destination]

    roadtrip = RoadtripFacade.find_roadtrip(from, to)
    # loc = LocationFacade.find_location(params[:location])
    # weather = WeatherFacade.get_weather(loc.first, loc.last)

    # render json: RoadtripSerializer.find_destination(loc, weather)
  end
end