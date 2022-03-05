class GeoFacade 
  def geo_details(location)
    WeatherGeo.new(service.get_geo(location)[0])
  end 

  def service 
    GeoService.new 
  end 
end 