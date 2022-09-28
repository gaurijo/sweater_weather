class Api::V1::UsersController < ApplicationController 
  def create 
    if params[:password] == params[:password_confirmation] 
      user = User.create(params[:user_params])
      render json: UserSerializer.user_data(user), status: 201
    else 
      render json: { errors: "Email or password incorrect" }, status: 400
    end
  end

private 

  def user_params 
    params.permit(:email, :password, :password_confirmation, :auth_token)
  end
end