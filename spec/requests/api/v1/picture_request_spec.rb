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
      picture = JSON.parse(response.body, symbolize_names: true)
      expect(picture[:data]).to be_a(Hash)
      expect(picture[:data]).to have_key(:id)
      expect(picture[:data]).to have_key(:type)
      expect(picture[:data][:attributes]).to be_a(Hash)
      expect(picture[:data][:attributes]).to have_key(:photo_info)
      expect(picture[:data][:attributes][:photo_info]).to be_a(Hash)
      expect(picture[:data][:attributes][:photo_info]).to have_key(:location)
      expect(picture[:data][:attributes][:photo_info]).to have_key(:image_url)
      expect(picture[:data][:attributes][:photo_info]).to have_key(:credit)
    end
  end
end