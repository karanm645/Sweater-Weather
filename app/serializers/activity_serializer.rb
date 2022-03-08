class ActivitySerializer
  def self.activity_info(activity_1, activity_2, weather_data, destination)
    {
      "data": {
        "id": "null",
        "type": "activities",
        "attributes": {
          "destination": destination,
          "forecast": {
            "summary": weather_data.current_weather[:description],
            "temperature": weather_data.current_weather[:temperature]
          },
          "activities": [activity_1.except!(:link, :key, :accessibility), activity_2.except!(:link, :key, :accessibility)]
        } 
      }
    }
  end 
  def except(keys)
    dup.except!(:link, :key, :accessibility)
  end
end 