require 'rails_helper' 

RSpec.describe BookSearchFacade do 
  describe '::book_search' do 
    it 'returns books based on location' do 
      data = BookSearchFacade.find_books("denver,co", 2)
      # expect(data).to have_key(:numFound)
      # expect(data[:docs]).to be_an Array 
      # expect(data[:docs][0).to have_key(:title)
      #play around with the tests, extract what you need
    end 
  end 
end 