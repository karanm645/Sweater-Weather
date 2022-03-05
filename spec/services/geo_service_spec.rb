require 'rails_helper'

RSpec.describe GeoService do 
  let(:service) { GeoService.new }

  describe '#get_geo' do 
    it 'returns geo' do 
      geography = service.get_geo("denver")
      expect(geography).to be_an Array 
    end 
  end 
end 