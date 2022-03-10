class Api::V1::SessionsController < ApplicationController
  def create 
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: UsersSerializer.new(user)
    elsif user.nil?
      render json: { error: 'Unable to log in. Please try again.' }, status: :unauthorized
    end 
  end 
end 
