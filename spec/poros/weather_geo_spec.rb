require 'rails_helper'

RSpec.describe WeatherGeo do 
  let(:details) { WeatherGeo.new({ lat: 39.7392364, lng: -104.9848623 })}
  
  describe 'initialize' do 
    it 'exists' do 
      actual = details 
      expected = WeatherGeo 

      expect(actual).to be_a(expected)
    end 
  end 

  describe "attributes" do 
    it 'has a latitude' do 
      actual = details.lat
      expected = 39.7392364

      expect(actual).to eq(expected)
    end 

    it 'has a longitude' do 
      actual = details.long
      expected = -104.9848623

      expect(actual).to eq(expected)
    end 
  end 
end 