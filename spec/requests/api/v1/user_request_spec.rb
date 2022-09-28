require 'rails_helper'

RSpec.describe "User Request" do 
  it "uses api call to create user data" do 
    user = User.create(email: "gauri@test.com", password: "123password", password_confirmation: "123password")

  result =    {
      "email": "#{user.email}",
      "password": "#{user.password}",
      "password_confirmation": "#{user.password_confirmation}"
    }

  headers = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

  post "/api/v1/users", headers: headers, params: JSON.generate(result)
  
  expect(response).to be_successful
  expect(response.status).to eq(201)
  end

  it "renders error message for bad credentials" do 
    data = {
      "email": "gauri@test.com",
      "password": "password",
      "password_confirmation": "notcorrectpassword"
    }

    headers = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

    post "/api/v1/users", headers: headers, params: JSON.generate(data)

    expect(response).to_not be_successful
    expect(response.body).to eq("{\"errors\":\"Email or password incorrect\"}")
    expect(response.status).to eq(400)
  end
end