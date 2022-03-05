require 'rails_helper'

RSpec.describe ForecastFacade do 
  let(:facade) { ForecastFacade.new}

  describe '#forecast_details' do 
    it 'returns forecast_details from poros' do 
      
      expect(facade.forecast_details("39.7392364", "-104.9848623")).to be_a Forecast
    end 
  end 
end 