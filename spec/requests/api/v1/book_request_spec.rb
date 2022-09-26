require 'rails_helper' 

RSpec.describe "Book Request" do 
  it "sends book data based on a location and quantity" do 

    get "/api/v1/book-search?location=denver,co&quantity=5"

    expect(response).to be_successful
  end
end