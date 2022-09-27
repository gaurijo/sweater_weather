require 'rails_helper'

RSpec.describe "Road Trip Request" do 
  it "uses an api call to create road trip data" do 

    result = JSON.parse(File.read('spec/fixtures/roadtrip.json'), symbolize_names: true)

    headers = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

    post "/api/v1/road_trip", headers: headers, params: JSON.generate(result)

    expect(response).to be_successful
  end
end