class PictureSerializer
  include JSONAPI::Serializer
  set_type :image
  attributes :photo_info 
end