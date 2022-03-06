class Api::V1::ForecastController < ApplicationController
  def index 
    coords = GeoFacade.geo_details(params["location"])
    forecast = ForecastFacade.forecast_details(coords.lat, coords.long)
    render json: ForecastSerializer.new(forecast), status: :ok
  end
end 