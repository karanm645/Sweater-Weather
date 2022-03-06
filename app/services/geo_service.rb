class GeoService
  def self.get_geo(location)
    response = Faraday.get("http://www.mapquestapi.com/geocoding/v1/address?key=#{ENV["map_quest_key"]}&location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end 
end 