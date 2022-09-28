class UserSerializer 
  # include JSONAPI::Serializer 
  # attributes :email, :auth_token
  def self.user_data(user)
    {
      "data": {
        "type": "users",
        "id": user.id,
        "attributes": {
          "email": user.email,
          "api_key": user.auth_token
        }
      }
    }
  end
  # require 'pry'; binding.pry 
end