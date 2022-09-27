require 'rails_helper'

RSpec.describe "User Request" do 
  it "uses api call to create user data" do 

  result = JSON.parse(File.read('spec/fixtures/user.json'), symbolize_names: true)

  headers = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

  post "/api/v1/users", headers: headers, params: JSON.generate(result)
  
  expect(response).to be_successful
  expect(response.status).to eq(201)

  # result = JSON.parse(response.body, symbolize_names: true)
  # require 'pry'; binding.pry 
  expect(result[:data]).to be_a(Hash)
  expect(result[:data]).to have_key(:type)
  expect(result[:data]).to have_key(:id)
  expect(result[:data]).to have_key(:attributes)
  expect(result[:data][:id]).to be_a(String)
  expect(result[:data][:attributes]).to be_a(Hash)
  expect(result[:data][:attributes]).to have_key(:email)
  expect(result[:data][:attributes]).to have_key(:api_key)
  expect(result[:data][:attributes][:email]).to be_a(String)
  expect(result[:data][:attributes][:api_key]).to be_a(String)
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