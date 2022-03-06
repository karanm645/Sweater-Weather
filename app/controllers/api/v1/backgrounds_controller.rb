class Api::V1::BackgroundsController < ApplicationController
  def index
    picture = PictureFacade.picture_details(params[:location])
    render json: PictureSerializer.new(picture)
  end
end 