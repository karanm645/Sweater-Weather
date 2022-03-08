require 'rails_helper'

RSpec.describe BookSearchService do 
  let(:service) { BookSearchService }

  describe '#get_info' do 
    it 'returns book info' do 
      book_search = service.get_info("denver,co", 2)
      expect(book_search).to be_an Hash
    end 
  end 
end 