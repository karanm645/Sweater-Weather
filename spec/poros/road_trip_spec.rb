require 'rails_helper'

RSpec.describe RoadTrip do 
  describe 'initialize' do 
    it 'creates roadtrip details' do 
      response = File.read('test/fixtures/open_weather/road_trip.json')  
      trip_details = JSON.parse(response, symbolize_names: true) 

      road_trip = RoadTrip.new(trip_details, "denver,co", "pueblo,co")

      expect(road_trip).to be_a RoadTrip 
      expect(road_trip.trip_info[:start_city]).to eq("denver,co")
      expect(road_trip.trip_info[:end_city]).to eq("pueblo,co")
      expect(trip_details[:route]).to have_key(:formattedTime)
      expect(road_trip.trip_info[:travel_time]).to eq(6755)
    end 
  end 
end 
