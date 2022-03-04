class WeatherService
  def get_weather(location)
    response = Faraday.get("http://api.openweathermap.org/data/2.5/weather?appid=#{ENV["weather_api_key"]}&location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end 
end 