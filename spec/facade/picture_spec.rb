require 'rails_helper'

RSpec.describe PictureFacade do 
  let(:facade) { PictureFacade}

  describe '#picture_details' do 
    it 'returns picture_details from poros' do 
      
      expect(facade.picture_details("denver")).to be_a Picture
    end 
  end 
end 