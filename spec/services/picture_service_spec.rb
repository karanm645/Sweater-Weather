require 'rails_helper'

RSpec.describe PictureService do 
  let(:service) { PictureService }

  describe '#get_pics' do 
    it 'returns pics' do 
      pictures = service.get_pics("denver")
      expect(pictures).to be_an Hash 
    end 
  end 
end 