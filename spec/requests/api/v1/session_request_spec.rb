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

      expect(response).to have_http_status(200)
      body = JSON.parse(response.body, symbolize_names: true)
    end 
  end
end 