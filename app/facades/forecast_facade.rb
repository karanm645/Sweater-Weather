class ForecastFacade 
  def self.forecast_details(longitude, latitude)
    Forecast.new(service.get_forecast(longitude, latitude))
  end 

  def self.service 
    ForecastService 
  end 
end 