require 'rails_helper'

RSpec.describe ActivityService do 
  let(:service) { ActivityService }
  describe '::get_activity' do 
    it 'returns activity data' do 
      data = service.get_activity("education")

      expect(data).to be_a Hash 
      
    end 
  end 
end 