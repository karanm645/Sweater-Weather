class Forecast 
  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(data)
    @id = nil 
    @current_weather = detail_current_weather(data[:current])
    @daily_weather = detail_daily_weather(data[:daily])
    @hourly_weather = detail_hourly_weather(data[:hourly])
  end 

  def detail_current_weather(specific)
    {
      datetime: Time.zone.at(specific[:dt]).to_s(:dt),
      sunrise: Time.zone.at(specific[:sunrise]).to_s(:time),
      sunset: Time.zone.at(specific[:sunset]).to_s(:time),
      temperature: specific[:temp],
      feels_like: specific[:feels_like],
      humidity: specific[:humidity],
      uvi: specific[:uvi],
      visibility: specific[:visibility],
      description: specific[:weather][0][:description],
      icon: specific[:weather][0][:icon]    }    
  end 

    def detail_daily_weather(specific)
    specific.slice(0, 5).map do |day|
      {
        dt: Time.zone.at(day[:dt]).to_date,
        sunrise: Time.zone.at(day[:sunrise]).to_s(:time),
        sunset: Time.zone.at(day[:sunset]).to_s(:time),
        max: day[:temp][:max],
        min: day[:temp][:min],
        description: day[:weather][0][:description],
        icon: day[:weather][0][:icon]
      }
    end
  end

  def detail_hourly_weather(specific)
    specific.slice(0, 8).map do |hour|
      {
        dt: Time.zone.at(hour[:dt]).to_s(:time).to_i,
        temp: hour[:temp],
        description: hour[:weather][0][:description],
        icon: hour[:weather][0][:icon]
      }
    end
  end
end 