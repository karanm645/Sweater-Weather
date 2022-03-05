require 'rails_helper'

RSpec.describe GeoFacade do 
  let(:facade) { GeoFacade.new}

  describe '#geo_details' do 
    it 'returns geo_details from poros' do 
      
      expect(facade.geo_details("denver")).to be_a WeatherGeo
    end 
  end 
end 