class Api::V1::SessionsController < ApplicationController 
  def create
    user = User
          .find_by(email: user_params[:email])
          .try(:authenticate, user_params[:password])
    if user 
      session[:user_id] = user.id 
      render json: UserSerializer.user_data(user), status: 200
    else
      render json: { errors: "Email or password incorrect" }, status: 400
    end
  end

private 

  def user_params 
    params.permit(:email, :password, :password_confirmation, :auth_token)
  end

end