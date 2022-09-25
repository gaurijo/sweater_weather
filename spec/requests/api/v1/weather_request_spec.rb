require 'rails_helper'

RSpec.describe "Weather Request" do 
  it "sends data for weather forecast for a particular city" do 

    get "/api/v1/forecast?location=denver,co"
    
    expect(response).to be_successful
    # require 'pry'; binding.pry 

    # result = JSON.parse(response.body, symbolize_names: true)[:data]
    # expect(result).to have_key(:id)
    # expect(result[:id]).to eq(nil)
  end
end