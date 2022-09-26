class Api::V1::UsersController < ApplicationController 
  def create 
    if params[:password] == params[:password_confirmation]
      user = User.create(params[:user_params])
      render json: UserSerializer.new(user), status: 201
    else
      render status: 404
    end
  end

  private 
  def user_params 
    params.permit(:email, :password, :password_confirmation)
  end
end