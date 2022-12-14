class User < ApplicationRecord 
  validates_presence_of :email
  has_secure_password
  has_secure_token :auth_token
end