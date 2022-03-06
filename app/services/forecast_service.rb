class ForecastService
  def self.get_forecast(latitude, longitude)
    response = Faraday.get("https://api.openweathermap.org/data/2.5/onecall?appid=#{ENV["weather_api_key"]}&lat=#{latitude}&lon=#{longitude}&exclude=minutely,alerts")
    JSON.parse(response.body, symbolize_names: true)
  end 
end 