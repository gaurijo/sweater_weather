class Api::V1::SessionsController < ApplicationController 
  def login 
    user = User.find_or_create_by(email: params[:email])
    if params[:password] == params[:password_confirmation]
      user.save
      session[:user_id] = user.id 
      render json: UserSerializer.user_data(user), status: 200
    else
      render json: { errors: "Email or password incorrect" }, status: 400
    end
    # require 'pry'; binding.pry 
  end
end