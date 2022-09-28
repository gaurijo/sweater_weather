class Api::V1::UsersController < ApplicationController 
  def create 
    user = User.new(user_params)
    if user.save 
      session[:user_id] = user.id 
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

