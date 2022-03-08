class BookSearchFacade
  def self.find_books(location, limit)
    BookSearchService.get_info(location, limit)
  end 
end 