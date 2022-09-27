require 'rails_helper'

RSpec.describe "Road Trip Request" do 
  it "uses an api call to create road trip data" do 
    user = User.create(email: "gauri@test.com", password: "123password", password_confirmation: "123password")
    # result = JSON.parse(File.read('spec/fixtures/roadtrip.json'), symbolize_names: true)
    result = {
      "origin": "Denver,CO",
      "destination": "Boulder,CO",
      "api_key": "#{user.auth_token}"
    }
    headers = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

    post "/api/v1/road_trip", headers: headers, params: JSON.generate(result)

    expect(response).to be_successful
  end
end