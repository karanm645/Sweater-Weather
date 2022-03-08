require "rails_helper"

RSpec.describe ActivityFacade do 
  describe "::activity_search" do 
    it 'returns activities based on input' do 
      data = ActivityFacade.activity_search("recreational")
      expect(data).to have_key(:activity)
      expect(data).to have_key(:type)
      expect(data).to have_key(:participants)
      expect(data).to have_key(:price)
    end 
  end 
end 