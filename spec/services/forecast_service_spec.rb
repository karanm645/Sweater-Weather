require 'rails_helper'

RSpec.describe ForecastService do 
  let(:service) { ForecastService }

  describe '#get_forecast' do 
    it 'returns forecast' do 
      forecast = service.get_forecast("39.7392364", "-104.9848623")
      expect(forecast).to be_a Hash 

      expect(forecast).to have_key(:current)
      expect(forecast[:current]).to have_key(:temp)
      expect(forecast[:current][:weather]).to be_an(Array)
      expect(forecast[:current][:weather][0]).to have_key(:description)


      expect(forecast).to have_key(:hourly)
      expect(forecast[:hourly]).to be_an(Array)
      expect(forecast[:hourly][0]).to be_a(Hash)
      expect(forecast[:hourly][0]).to have_key(:temp)
      expect(forecast[:hourly][0][:weather]).to be_an(Array)
      expect(forecast[:hourly][0][:weather][0]).to have_key(:id)
      expect(forecast[:hourly][0][:weather][0]).to have_key(:description)
    end 
  end 
end 