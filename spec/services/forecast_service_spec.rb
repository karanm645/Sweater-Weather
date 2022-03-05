require 'rails_helper'

RSpec.describe ForecastService do 
  let(:service) { ForecastService.new }

  describe '#get_forecast' do 
    it 'returns forecast' do 
      forecast = service.get_forecast("39.7392364", "-104.9848623")
      expect(forecast).to be_a Hash 
    end 
  end 
end 