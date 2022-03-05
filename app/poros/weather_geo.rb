class WeatherGeo
  attr_reader :city,
              :state,
              :country,
              :latitude,
              :longitude 

  def initialize(data)
    @city = data[:city]
    @state = data[:state]
    @country = data[:country]
    @latitude = data[:lat]
    @longitude  = data[:lon]
  end 
end 