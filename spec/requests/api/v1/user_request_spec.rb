require 'rails_helper'

RSpec.describe "User Request" do 
  it "uses api call to create user data" do 

        data = {
                  email: "gauri@email.com",
                  password: "test123",
                  password_confirmation: "test123"
                }

  headers = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

  post "/api/v1/users", headers: headers, params: JSON.generate(data)

  expect(response).to be_successful

  
  end
end