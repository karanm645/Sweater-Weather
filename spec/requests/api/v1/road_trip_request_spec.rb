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
    end 
  end 
end 