require 'rails_helper'

RSpec.describe "Session Request" do 
  it "uses api call to create a login session" do 

    result = JSON.parse(File.read('spec/fixtures/session.json'), symbolize_names: true)

    header = { "CONTENT_TYPE" => "application/json", "Accept" => "application/json"}

    post "/api/v1/sessions", headers: headers, params: JSON.generate(result)
    # require 'pry'; binding.pry 
    expect(response).to be_successful
    expect(response.status).to eq(200)
  end
end