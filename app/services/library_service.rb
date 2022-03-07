class LibraryService 
  def self.get_info 
    conn = Faraday.new(url: "https://openlibrary.org") 
    response = conn.get("/works/OL45883W.json")
    JSON.parse(response.body, symbolize_names: true)
  end 
end 