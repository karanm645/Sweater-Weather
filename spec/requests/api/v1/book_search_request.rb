require 'rails_helper'

RSpec.describe "Book Search API" do 
  describe 'get /api/v1/book-search' do 
    it 'returns book and forecast results based on location' do 
      location = "denver,co"
      limit = 2
      get "/api/v1/book-search?location=#{location}&limit=#{limit}"
      results = JSON.parse(response.body, symbolize_names: true)
    end 
  end
end 