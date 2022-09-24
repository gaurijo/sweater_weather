require 'rails_helper'

RSpec.describe "Weather Request" do 
  it "sends data for weather forecast for a particular city" do 

    get "/api/v1/forecast?location=denver,co"
    
    expect(response).to be_successful

    result = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(result).to be_a(Hash)
    expect(result).to have_key(:attributes)
    expect(result[:attributes]).to have_key(:id)
    expect(result[:attributes]).to have_key(:type)
    expect(result[:attributes]).to have_key(:current_weather)

    current_weather = result[:attributes][:current_weather]
  end
end