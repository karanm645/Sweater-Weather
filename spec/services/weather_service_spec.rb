require 'rails_helper'

RSpec.describe WeatherService do 
  let(:service) { WeatherService.new }

  describe '#get_weather' do 
    it 'returns a list of json weather info' do 
      weather = service.get_weather("denver,co")
      expect(weather).to be_a Hash
    end 
  end 
end 