class BookSearchSerializer
  def self.book_forecast_results(book_data, weather_data, location) 
    {
      "data": {
        "id": "null",
        "type": "books",
        "attributes": {
          "destination": location,
          "forecast": {
            "summary": weather_data.current_weather[:description],
            "temperature": weather_data.current_weather[:temperature]
          },
          "total_books_found": book_data[:numFound],
          "books": book_data[:docs].map do |book|
            {
              "isbn": book[:isbn],
              "title": book[:title],
              "publisher": book[:publisher]
            }
          end 
        }
      }
    }
  end
end 