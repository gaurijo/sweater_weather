class Api::V1::BooksController < ApplicationController 
  def results 
    books = BookFacade.get_books(params[:location], params[:quantity])
    loc = LocationFacade.find_location(params[:location])
    weather = WeatherFacade.get_weather(loc.first, loc.last)
    #render json serializer response
  end
end