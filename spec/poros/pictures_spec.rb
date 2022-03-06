require 'rails_helper'

RSpec.describe Picture do 
  describe 'initialize' do 
    it 'creates forecast details' do 
      response = File.read('test/fixtures/open_weather/pictures.json')  
      picture_details = JSON.parse(response, symbolize_names: true) 

      picture = Picture.new(picture_details, "denver")

      expect(picture).to be_a Picture  

      expect(picture.photo_info).to have_key(:location)
      expect(picture.photo_info).to have_key(:image_url)
      expect(picture.photo_info).to have_key(:credit)
    end 
  end 
end 
