require 'rails_helper'

RSpec.describe "Weather Request" do 
  it "sends data for weather forecast for a particular city" do 

    get "/api/v1/forecast?location=denver,co"

    expect(response).to be_successful
  end
end