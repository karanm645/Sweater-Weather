require 'rails_helper'

RSpec.describe WeatherGeo do 
  let(:details) { WeatherGeo.new({ city: "Denver", state: "Colorado", country: "US", lat: 39.7392364, lon: -104.9848623 })}
  
  describe 'initialize' do 
    it 'exists' do 
      actual = details 
      expected = WeatherGeo 

      expect(actual).to be_a(expected)
    end 
  end 

  describe "attributes" do 
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