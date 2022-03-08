class Api::V1::ActivityController < ApplicationController
  def index 
    coordinates = GeoFacade.geo_details(params[:destination])
    weather_data = ForecastFacade.forecast_details(coordinates.lat, coordinates.long)
    activity_1 = ActivityFacade.activity_search(params[:type])
    activity_2 = ActivityFacade.activity_search(params[:type]="relaxation")
    activity_3 = ActivityFacade.activity_search(params[:type]="recreational")
    activity_4 = ActivityFacade.activity_search(params[:type]="busywork")
    activity_5 = ActivityFacade.activity_search(params[:type]="cooking")
    if weather_data.current_weather[:temperature] >= 60
      render json: ActivitySerializer.activity_info(activity_2, activity_3, weather_data, params[:destination])
    elsif weather_data.current_weather[:temperature] >= 50 && weather_data.current_weather[:temperature] < 60
      render json: ActivitySerializer.activity_info(activity_2, activity_4, weather_data, params[:destination])
    elsif weather_data.current_weather[:temperature] < 50
      render json: ActivitySerializer.activity_info(activity_2, activity_5, weather_data, params[:destination])
    end 
  end
end 