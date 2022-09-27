class Api::V1::RoadtripsController < ApplicationController 
  def create

    from = params[:origin]
    to = params[:destination]

    roadtrip = RoadtripFacade.find_roadtrip(from, to)


    render json: RoadtripSerializer.get_destination(from, to)
    # require 'pry'; binding.pry 
  end
end