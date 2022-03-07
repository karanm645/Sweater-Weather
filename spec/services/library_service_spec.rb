require 'rails_helper'

RSpec.describe LibraryService do 
  let(:service) { LibraryService }

  describe '#get_info' do 
    it 'returns library info' do 
      library = service.get_info("denver,co")
      expect(library).to be_an Hash 
    end 
  end 
end 