class Api::V1::RoadtripsController < ApplicationController 
  def create

    from = params[:origin]
    to = params[:destination]

    roadtrip = RoadtripFacade.find_roadtrip(from, to)

    if roadtrip.traveltime.nil?
      render json: { error: "Impossible Route"}, status: 400
    else
    render json: RoadtripSerializer.get_destination(from, to)
    end
  end
end