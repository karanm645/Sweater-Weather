class GeoFacade 
  def self.geo_details(location)
    binding.pry
    WeatherGeo.new(service.get_geo(location)[:results][0][:locations][0][:latLng])
  end 

  def self.service 
    GeoService 
  end 
end 