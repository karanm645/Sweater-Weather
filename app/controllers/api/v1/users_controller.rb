class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
      if user.save
      # session[:user_id] = user.id
      user.update(api_key: SecureRandom.hex)
      render json: UsersSerializer.new(user)
      elsif
      render json: { error: 'Wrong Email!' }
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end 