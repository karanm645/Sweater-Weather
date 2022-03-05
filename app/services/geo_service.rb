class GeoService
  def get_geo(location)
    response = Faraday.get("http://api.openweathermap.org/geo/1.0/direct?appid=#{ENV["weather_api_key"]}&q=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end 
end 