require 'rails_helper'

RSpec.describe "Session Request" do 
  it "uses api to create a login session for a user" do 
    user = User.create(email: "gauri@test.com", password: "password", password_confirmation: "password")

    result = 
      {
        "email": "gauri@test.com",
        "password": "password"
      }

    headers = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

    post "/api/v1/sessions", headers: headers, params: JSON.generate(result)

    parsed = JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry 
    expect(response).to be_successful
    expect(response.status).to eq(200)

    # expect(result).to be_a(Hash)
    # expect(result[:data]).to be_a(Hash)
    # expect(result[:data][:type]).to eq("users")
    # expect(result[:data][:id]).to be_a(String)
    # expect(result[:data]).to have_key(:attributes)
    # expect(result[:data][:attributes]).to have_key(:email)
    # expect(result[:data][:attributes]).to have_key(:api_key)
    # expect(result[:data][:attributes]).to_not have_key(:password)
    # expect(result[:data][:attributes]).to_not have_key(:password_confirmation)
    # expect(result[:data][:attributes][:email]).to be_a(String)
    # expect(result[:data][:attributes][:api_key]).to be_a(String)
  end

  # it "renders an error response if session credentials are bad" do 
  #     data = {
  #       "email": "gauri@test.com",
  #       "password": "password",
  #       "password_confirmation": "notcorrectpassword"
  #     }
  #   header = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

  #   post "/api/v1/sessions", headers: headers, params: JSON.generate(data)
  #   # require 'pry'; binding.pry 
  #   expect(response).to_not be_successful
  # end
end