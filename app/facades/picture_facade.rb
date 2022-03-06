class PictureFacade 
  def self.picture_details(location)
    picture = service.get_pics(location)
    Picture.new(picture, location)
  end 

  def self.service 
    PictureService 
  end 
end 