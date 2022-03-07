class Api::V1::LibrariesController < ApplicationController
  def index 
    libraries = LibraryFacade.library_details(params[:location], params[:quantity])
    render json: LibrarySerializer.new(libraries)
end 