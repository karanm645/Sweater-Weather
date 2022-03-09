class GeoService
  def self.get_geo(location)
    response = Faraday.get("http://www.mapquestapi.com/geocoding/v1/address?key=#{ENV["map_quest_key"]}&location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end 
  
  def self.get_directions(start, finish)
    conn = Faraday.new(url: "http://www.mapquestapi.com") do |faraday|
      faraday.params["key"] = ENV["map_quest_key"]
    end 
    
    response = conn.get("/directions/v2/route?from=#{start}&to=#{finish}")
    JSON.parse(response.body, symbolize_names: true)
  end
end