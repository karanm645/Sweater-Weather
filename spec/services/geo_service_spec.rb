require 'rails_helper'

RSpec.describe GeoService do 
  let(:service) { GeoService }

  describe '#get_geo' do 
    it 'returns geo' do 
      geography = service.get_geo("denver,co")
      expect(geography).to be_an Hash 
      expect(geography[:results]).to be_an(Array)
      expect(geography[:results][0]).to be_a(Hash)
      expect(geography[:results][0][:locations]).to be_an(Array)
      expect(geography[:results][0][:locations][0]).to be_a(Hash)
      expect(geography[:results][0][:locations][0]).to have_key(:latLng)
      expect(geography[:results][0][:locations][0][:latLng]).to have_key(:lat)
      expect(geography[:results][0][:locations][0][:latLng]).to have_key(:lng)
    end 
  end 

  describe '::get_directions' do 
    it 'returns the directions' do 
      directions = service.get_directions("denver,co", "pueblo,co")
      expect(directions).to be_a Hash
    end 
  end 
end 