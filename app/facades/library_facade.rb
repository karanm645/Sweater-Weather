class LibraryFacade 
  def self.library_details(location, quantity)
    binding.pry
    Library.new(service.get_info(location, quantity))
    # coordinates = GeoFacade.geo_details(location)
    # @books = LibraryService.get_info(location, quantity)

    # data = ForecastService.get_forecast(coordinates.lat,coordinates.long)
    # forecast = Forecast.new(data)
    # @total_number_of_books = amount(quantity)
    # @books_formatted = books_format(@books)
    # farenheit = convert_to_f(forecast.current_weather[:temperature])
    # details = format_details(location, forecast, farenheit, @books)
    # Library.new(details)
  end 

  def self.service 
    LibraryService 
  end 

  def self.convert_to_f(kelvin)
    ((kelvin - 273.15) * 9/5 +32).round
  end

  def self.amount(quantity)
    # @books[:docs][quantity]
  end 
  def self.books_format(books)
    # books[:docs].each do |book|
    #   {
    #   isbn: book[:isbn],
    #   title: book[:title],
    #   publisher: book[:publisher]
    #   }
    # end 
  end 

  def self.format_details(location, forecast, farenheit, books)
    # {
    #   destination: location, 
    #   forecast: {
    #     summary: forecast.current_weather[:conditions],
    #     temperature: "#{farenheit} F"
    #   },
    #   total_books_found: @total_number_of_books, 
    #   books: @books_formatted
    # }
  end
end 