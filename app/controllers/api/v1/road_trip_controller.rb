class Api::V1::RoadTripController < ApplicationController
  def create 
    user = User.find_by(api_key: params[:road_trip][:api_key])
    if user
      coordinates = GeoFacade.geo_details(params[:road_trip][:end_city])
      end_city_forecast = ForecastFacade.forecast_details(coordinates.lat, coordinates.long)
      road_trip = RoadTripFacade.trip_details(params[:road_trip][:start_city], params[:road_trip][:end_city])
      RoadTripSerializer.temp_at_destination(end_city_forecast, road_trip)
      RoadTripSerializer.description_at_destination(end_city_forecast, road_trip)
      render json: RoadTripSerializer.get_details(end_city_forecast, road_trip)
    else 
      render json: RoadTripSerializer.error("Cannot Confirm User")
    end 
  end 
end