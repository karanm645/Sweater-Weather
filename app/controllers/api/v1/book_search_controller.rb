class Api::V1::BookSearchController < ApplicationController
  def index 
    book_data = BookSearchFacade.find_books(params[:location], params[:limit])
    coordinates = GeoFacade.geo_details(params[:location])
    weather_data = ForecastFacade.forecast_details(coordinates.lat, coordinates.long)
    render json: BookSearchSerializer.book_forecast_results(book_data, weather_data, params[:location])
  end
end 