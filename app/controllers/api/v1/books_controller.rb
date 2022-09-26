class Api::V1::BooksController < ApplicationController 
  def results 
    books = BookFacade.get_books(params[:location], params[:quantity])
    loc = LocationFacade.find_location(params[:location])
    weather = WeatherFacade.get_weather(loc.first, loc.last)
    weather = Weather.new(json[:current])
    #render json serializer response
  end
end