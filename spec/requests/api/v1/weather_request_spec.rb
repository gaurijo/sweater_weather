require 'rails_helper'

RSpec.describe "Weather Request" do 
  it "sends data for weather forecast for a particular city" do 

    get "/api/v1/forecast?location=denver,co"
    
    expect(response).to be_successful
    result = JSON.parse(response.body, symbolize_names: true)
    expect(result).to have_key(:data)
    expect(result[:data]).to have_key(:id)
  end
end