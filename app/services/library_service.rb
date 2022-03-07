class LibraryService 
  def self.get_info(location, quantity) 
    conn = Faraday.new(url: "https://openlibrary.org") 
    response = conn.get("/search.json?q=#{location}}&limit=#{quantity}") # for quantity - you can limit
    JSON.parse(response.body, symbolize_names: true)
  end 
end 