require 'rails_helper'

RSpec.describe "get api/v1/activity" do 
  it 'returns activities based on xyz' do 
    location = "chicago,il"
    get "/api/v1/activities?destination=#{location}"
    results = JSON.parse(response.body, symbolize_names: true)
    expect(results[:data]).to have_key(:id)
    expect(results[:data]).to have_key(:type)
    expect(results[:data]).to have_key(:attributes)
    expect(results[:data][:attributes]).to have_key(:destination)
    expect(results[:data][:attributes]).to have_key(:forecast)
    expect(results[:data][:attributes]).to have_key(:activities)
    
    results[:data][:attributes][:activities].each do |activities|
      expect(activities).to have_key(:activity)
      expect(activities).to have_key(:type)
      expect(activities).to have_key(:participants)
      expect(activities).to have_key(:price)
    end 
  end 
end 