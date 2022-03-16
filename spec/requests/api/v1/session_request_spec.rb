require 'rails_helper'

RSpec.describe 'User Endpoint' do 
  describe 'Sessions' do
    it 'returns a successful response' do
      user_1 = { email: 'firewatera2c@gmail.com', password: '72396', password_confirmation: '72396'}
      post "/api/v1/users", params: user_1
      result = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
    end

    it 'authenticates user pw and confirmation' do
      user_1 = User.create(email: 'firewatera2c@gmail.com', password: '72396', password_confirmation: '72396')
      log_in = { email: 'firewatera2c@gmail.com', password: '72396'}
      post "/api/v1/sessions", params: log_in 
      body = JSON.parse(response.body, symbolize_names: true)

      expect(response).to have_http_status(200)
      expect(body[:data]).to be_a(Hash)
      expect(body[:data]).to have_key(:id)
      expect(body[:data]).to have_key(:type)
      expect(body[:data]).to have_key(:attributes)
      expect(body[:data][:attributes]).to have_key(:email)
      expect(body[:data][:attributes]).to have_key(:api_key)
    end 

    it 'sad path -- renders error if correct info is not put in' do 
      user_1 = { email: 'firewatera2c@gmail.com', password: '72396', password_confirmation: '72396'}
      post "/api/v1/users", params: user_1
      expect(response).to be_successful
      
      fake_user = {email: 'waterfire@gmail.com', password: '2233'}
      post "/api/v1/users", params: fake_user

      result = JSON.parse(response.body, symbolize_names: true)
    #error expectation
    end 
  end
end 