class GeoFacade 
  def self.geo_details(location)
    WeatherGeo.new(service.get_geo(location))
  end 

  def self.service 
    GeoService 
  end 
end 