class ForecastFacade 
  def forecast_details(longitude, latitude)
    Forecast.new(service.get_forecast(longitude, latitude))
  end 

  def service 
    ForecastService.new 
  end 
end 