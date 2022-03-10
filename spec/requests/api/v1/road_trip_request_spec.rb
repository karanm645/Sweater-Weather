require 'rails_helper'

RSpec.describe 'Mapquest API Endpoint' do
  describe 'GET roadtrip data' do
    before :each do 
      @user_1 = { email: 'firewatera2c@gmail.com', password: '72396', password_confirmation: '72396'}
      post "/api/v1/users", params: @user_1, as: :json
      @result = JSON.parse(response.body, symbolize_names: true)
    end 

    it 'returns road trip details' do 
      road_trip = {start_city: "denver,co", end_city: "pueblo,co", api_key: @result[:data][:attributes][:api_key]  }
      post "/api/v1/road_trip", params: road_trip, as: :json

      body = JSON.parse(response.body, symbolize_names: true)
      expect(body[:data]).to have_key(:id)
      expect(body[:data]).to have_key(:type)
      expect(body[:data]).to have_key(:attributes)
      expect(body[:data][:attributes]).to have_key(:start_city)
      expect(body[:data][:attributes]).to have_key(:end_city)
      expect(body[:data][:attributes]).to have_key(:travel_time)
      expect(body[:data][:attributes]).to have_key(:weather_at_eta)
      expect(body[:data][:attributes][:weather_at_eta]).to have_key(:temperature)
      expect(body[:data][:attributes][:weather_at_eta][:temperature]).to be_a(Float)
      expect(body[:data][:attributes][:weather_at_eta][:conditions]).to be_a(String)
    end 
  end 
end 