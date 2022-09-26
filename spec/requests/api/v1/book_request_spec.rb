require 'rails_helper' 

RSpec.describe "Book Request" do 
  it "sends book data based on a location and quantity", :vcr do 

    get "/api/v1/book-search?location=denver,co&quantity=5"
    expect(response).to be_successful
    
    result = JSON.parse(response.body, symbolize_names: true)[:data]
    # require 'pry'; binding.pry 

    expect(result).to have_key(:id)
    expect(result[:id]).to eq(nil)
    expect(result).to have_key(:attributes)
    expect(result[:attributes]).to be_a(Hash)
    expect(result[:attributes]).to have_key(:destination)
    expect(result[:attributes]).to have_key(:forecast)
    expect(result[:attributes][:forecast]).to have_key(:summary)
    expect(result[:attributes][:forecast]).to have_key(:temperature)
    expect(result[:attributes][:forecast]).to_not have_key(:dew_point)
    expect(result[:attributes][:forecast]).to_not have_key(:humidity)
    expect(result[:attributes][:forecast]).to_not have_key(:uvi)
    expect(result[:books]).to be_a(Array)
    expect(result[:books].first).to be_a(Hash)
    expect(result[:books].first).to have_key(:isbn)
    expect(result[:books].first).to_not have_key(:contributor)
    expect(result[:books].first[:isbn]).to be_a(Array)
    expect(result[:books].first).to have_key(:title)
    expect(result[:books].first[:title]).to be_a(String)
    expect(result[:books].first).to have_key(:publisher)
    expect(result[:books].first[:publisher]).to be_a(Array)
    expect(result[:books].length).to eq(5)
  end
end