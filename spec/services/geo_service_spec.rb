require 'rails_helper'

RSpec.describe GeoService do 
  let(:service) { GeoService }

  describe '#get_geo' do 
    it 'returns geo' do 
      geography = service.get_geo("denver,co")
      expect(geography).to be_an Hash 
    end 
  end 
end 