class Picture 
  attr_reader :id,
              :photo_info

  def initialize(specifications, location)
    @id = nil
    @photo_info = picture_details(specifications, location)
  end 

  def picture_details(specifications, location)
    {
      location: location,
      image_url: specifications[:photos][0][:url],
      credit: specifications[:photos][0][:photographer],
    }
  end 
end 