class BookSearchService 
  def self.get_info(location, limit)
    conn = Faraday.new(url: "https://openlibrary.org") do |faraday|
      faraday.params[:units] = "imperial"
    end 
    response = conn.get("/search.json?q=#{location}&limit=#{limit}")
    JSON.parse(response.body, symbolize_names: true)
  end 
end 