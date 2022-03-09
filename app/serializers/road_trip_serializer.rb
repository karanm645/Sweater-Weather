class RoadTripSerializer
  def self.get_details(end_city_forecast, road_trip)
    {
      "data": {
        "id": nil,
        "type": "roadtrip",
        "attributes": { 
          "start_city": road_trip.trip_info[:start_city],
          "end_city": road_trip.trip_info[:end_city],
          "travel_time": ("%02d:%02d:%02d" % [road_trip.trip_info[:travel_time] / 3600, road_trip.trip_info[:travel_time] / 60 % 60, road_trip.trip_info[:travel_time] % 60]),
          "weather_at_eta":{ 
            "temperature": temp_at_destination(end_city_forecast, road_trip),
            "conditions": description_at_destination(end_city_forecast, road_trip)
          }
        }
      }
    }
  end

  def self.temp_at_destination(end_city_forecast, road_trip)
    time_at_destination = Time.now + road_trip.trip_info[:travel_time]
    integer_arrival = time_at_destination.utc.strftime('%H:%M').to_i
    x = end_city_forecast.hourly_weather.delete_if { |h| h[:dt] != integer_arrival}
    (x[0][:temp]/ 0.55555556 - 459.67).round(1)
  end 

  def self.description_at_destination(end_city_forecast, road_trip)
    time_at_destination = Time.now + road_trip.trip_info[:travel_time]
    integer_arrival = time_at_destination.utc.strftime('%H:%M').to_i
    x = end_city_forecast.hourly_weather.delete_if { |h| h[:dt] != integer_arrival}
    x[0][:description]
  end 

    def self.error(message)
    {
      "error": message
    }
  end
end 