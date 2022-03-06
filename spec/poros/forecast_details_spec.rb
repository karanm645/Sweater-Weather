require 'rails_helper'

RSpec.describe Forecast do 
  describe 'initialize' do 
    it 'creates forecast details' do 
      response = File.read('test/fixtures/open_weather/forecast_details.json')  
      forecast_details = JSON.parse(response, symbolize_names: true) 

      forecast = Forecast.new(forecast_details)
      expect(forecast).to be_a Forecast 
      expect(forecast.current_weather).to be_a Hash
      # expect(forecast.current_weather).to have_key(:dt)
      expect(forecast.current_weather).to have_key(:sunrise)
      expect(forecast.current_weather).to have_key(:sunset)
      expect(forecast.current_weather).to have_key(:feels_like)
      expect(forecast.current_weather).to have_key(:humidity)
      expect(forecast.current_weather).to have_key(:uvi)
      expect(forecast.current_weather).to have_key(:visibility)
      #has description and icon
      expect(forecast.current_weather).to have_key(:description)
      
      
      expect(forecast.daily_weather.first).to be_a(Hash)
      expect(forecast.daily_weather.first).to have_key(:dt)
      expect(forecast.daily_weather.first).to have_key(:sunrise)
      expect(forecast.daily_weather.first).to have_key(:sunset)
      #has both min and max
      expect(forecast.daily_weather.first).to have_key(:max)
      expect(forecast.daily_weather.first).to have_key(:min)
      #has both description and icon
      expect(forecast.daily_weather.first).to have_key(:description)
      expect(forecast.daily_weather.first).to have_key(:icon)

      expect(forecast.hourly_weather).to be_an Array
      expect(forecast.hourly_weather.first).to have_key(:dt)
      expect(forecast.hourly_weather.first).to have_key(:temp)
      #has description and icon 
      expect(forecast.hourly_weather.first).to have_key(:description)
      expect(forecast.hourly_weather.first).to have_key(:icon)
    end 

  end 
end 

