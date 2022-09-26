class Api::V1::UsersController < ApplicationController 
  def create 
    render json: User.all 
  end
end