require 'rails_helper'

RSpec.describe RoadTripFacade do 
  let(:facade) { RoadTripFacade}

  describe '#trip_details' do 
    it 'returns trip_details from poros' do 

      expect(facade.trip_details("denver,co", "pueblo,co").trip_info).to have_key(:start_city)
      expect(facade.trip_details("denver,co", "pueblo,co").trip_info).to have_key(:end_city)
      expect(facade.trip_details("denver,co", "pueblo,co").trip_info).to have_key(:travel_time)
    end 
  end 
end 