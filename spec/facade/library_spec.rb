require 'rails_helper'

RSpec.describe LibraryFacade do 
  let(:facade) { LibraryFacade}

  describe '#library_details' do 
    it 'returns library_details from poros' do 
      
      expect(facade.library_details("denver,co", 10)).to be_a Library
    end 
  end 
end 