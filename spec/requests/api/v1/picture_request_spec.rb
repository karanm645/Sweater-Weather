require 'rails_helper'

RSpec.describe 'Picture API Endpoint' do
  describe 'GET picture data' do
    before(:each) do
      get "/api/v1/backgrounds?location=denver"
    end

    it 'returns a successful response' do
      expect(response).to be_successful
    end

    it 'returns the json response' do
      forecast = JSON.parse(response.body, symbolize_names: true)
    end
  end
end