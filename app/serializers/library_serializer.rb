class LibrarySerializer
  include JSONAPI::Serializer
  set_id { 'null' }
  set_type :breweries
  attributes :destination, :forecast, :total_books_found, :books 
end