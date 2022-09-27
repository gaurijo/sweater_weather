require 'rails_helper'

RSpec.describe Roadtrip do 
  it "exists and has attributes" do 

    data = JSON.parse(File.read('spec/fixtures/roadtrip.json'), symbolize_names: true)

    roadtrip = Roadtrip.new(data)

    expect(roadtrip).to be_a(Roadtrip)
  end
end