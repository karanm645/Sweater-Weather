require 'rails_helper'

RSpec.describe 'Forecast API Endpoint' do
  describe 'GET forecast data' do
    before(:each) do
      get "/api/v1/forecast?location=denver,co"
    end

    it 'returns a successful response' do
      expect(response).to be_successful
    end

    it 'returns the json response' do
      forecast = JSON.parse(response.body, symbolize_names: true)
    end
  end
end
