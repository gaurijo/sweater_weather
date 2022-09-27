class Api::V1::UsersController < ApplicationController 
  def create 
      if params[:password] == params[:password_confirmation] 
        user = User.create(params[:user_params])
        user.save
        # render json: UserSerializer.new(user), status: 201
        render json: UserSerializer.user_data(user), status: 201
      else 
        params[:auth_token].nil? || params[:password] != params[:password_confirmation]
          render json: { errors: "Email or password incorrect" }, status: 400
        # require 'pry'; binding.pry 
      end
    end

private 

  def user_params 
    params.permit(:email, :password, :password_confirmation, :auth_token)
  end

end