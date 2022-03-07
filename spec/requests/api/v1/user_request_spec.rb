require 'rails_helper'

RSpec.describe 'User Endpoint' do 
  describe 'GET user data' do
    before(:each) do
      user_1 = { email: 'firewatera2c@gmail.com', password: '72396', password_confirmation: '72396'}
      post "/api/v1/users", params: user_1
      result = JSON.parse(response.body, symbolize_names: true)
    end

    it 'returns a successful response' do
      expect(response).to be_successful
    end
  end
end 