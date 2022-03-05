require 'rails_helper'

RSpec.describe Forecast do 
  let(:details) { Forecast.new({ current_weather: {:dt, :temp, :sunrise, :sunset, :feels_like, :humidity, :uvi, :visibility, weather: {:description}},
                                  daily_weather: { :dt, :sunrise, :sunset, temp: {:min, :max}}, daily: {weather: {:description, :icon}}
  
  describe 'initialize' do 
    it 'exists' do 
      actual = details.current_weather 
      expected = Forecast 

      expect(actual).to be_a(expected)
    end 
  end 

  describe "current weather attributes" do 
    it 'has a city' do 
      actual = details.city
      expected = "Denver"

      expect(actual).to eq(expected)
    end 

    it 'has a state' do 
      actual = details.state
      expected = "Colorado"

      expect(actual).to eq(expected)
    end 

    it 'has a country' do 
      actual = details.country
      expected = "US"

      expect(actual).to eq(expected)
    end 

    it 'has a latitude' do 
      actual = details.latitude
      expected = 39.7392364

      expect(actual).to eq(expected)
    end 

    it 'has a longitude' do 
      actual = details.longitude
      expected = -104.9848623

      expect(actual).to eq(expected)
    end 
  end 

end 