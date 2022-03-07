class Api::V1::SessionsController < ApplicationController
  def create 
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: UsersSerializer.new(user)
    else 
      render json: { error: "Can't login without correct information"}
    end 
  end 
end 
