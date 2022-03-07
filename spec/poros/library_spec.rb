require 'rails_helper'

RSpec.describe Library do 
  describe 'initialize' do 
    it 'creates library details' do 
      data = 
      {:destination=>"denver,co",
      :forecast=>{:summary=>"Cloudy with a chance of meatballs", :temperature=>83},
      :total_books_found=> 2,
      :books=>[{:isbn=>["0762507845", "9780762507849"], :title=>"Denver,Co", :publisher=>["Universal Map Enterprises"]},
              {:isbn=>["9780883183663", "0883183668"], :title=>"Photovoltaic safety, Denver, CO, 1988", :publisher=>["American Institute of Physics"]}]
      }

      library = Library.new(data)
      expect(library).to be_a Library 
      expect(library.destination).to eq("denver,co")
      expect(library.forecast).to be_a Hash 
      expect(library.total_books_found).to eq(2)
      expect(library.books).to be_a Array 
    end 
  end 
end 