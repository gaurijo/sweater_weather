class Api::V1::BooksController < ApplicationController 
  def results 
    loc = LocationFacade.find_location(params[:location])
    weather = WeatherFacade.get_weather(loc.first, loc.last)
    books = BookFacade.get_books(params[:location], params[:quantity])
    render json: BookLocationSerializer.format_books(params[:location], weather, books)
  end
end