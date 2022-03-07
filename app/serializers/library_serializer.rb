class LibrarySerializer
  include JSONAPI::Serializer
  set_id { 'null' }
  set_type :libraries
  attributes :total_books_found, :isbn, :title, :publisher 
end